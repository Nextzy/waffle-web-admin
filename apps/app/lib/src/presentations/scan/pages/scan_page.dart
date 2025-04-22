import 'package:change_application_name/application.dart';

enum ScanPageEvent {
  yourEvent,
}

@RoutePage()
class ScanPage extends AppPage {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageBlocState();
}

class _ScanPageBlocState extends AppPageState<ScanPage> {
  final GlobalKey defaultKey = GlobalKey(debugLabel: 'QR');
  bool _flash = false;
  Barcode? result;
  QRViewController? controller;

  void listenEvent(BuildContext context, Object event, Object? data) {
    switch (event) {
      case ScanPageEvent.yourEvent:
        break;
    }
  }

  double get scanArea => MediaQuery.of(context).size.width - (32.0 * 2);

  @override
  Widget build(BuildContext context) => AppScaffold(
        body: Stack(
          children: [
            QRView(
              key: defaultKey,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 0,
                borderLength: 30,
                borderWidth: 10,
                overlayColor: context.theme.color.bg.withValues(alpha: 0.96),
                cutOutSize: scanArea,
              ),
              onQRViewCreated: onQRViewCreated,
            ),
            AppTopBackNavigationBar(
              title: 'Scan',
              backgroundColor: Colors.transparent,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: buildCameraAction(),
            ),
          ],
        ),
      );

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen(
      (scanData) {
        //TODO: Implement scan data
        result = scanData;
      },
    );
  }

  Widget buildCameraAction() {
    return SafeArea(
      child: RowLayout(
        mainAxisSize: MainAxisSize.min,
        gap: 20.0,
        padding: Space.insetBottom56,
        children: [
          AppShadedIconButton(
            size: WidgetSize.lg,
            icon: _flash
                ? Assets.icon.lightningRegular.keyName
                : Assets.icon.lightningSlashRegular.keyName,
            onPress: () async {
              await controller?.toggleFlash();
              setState(
                () {
                  _flash = !_flash;
                },
              );
            },
          ),
          AppShadedIconButton(
            size: WidgetSize.lg,
            icon: Assets.icon.arrowsClockwiseRegular.keyName,
            onPress: () async {
              await controller?.flipCamera();
              updateState();
            },
          ),
        ],
      ),
    );
  }
}
