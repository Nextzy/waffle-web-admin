import 'package:design_system/lib.dart';

class ForceUpdatePage extends AppPage {
  const ForceUpdatePage({
    super.key = const Key('ForceUpdatePage'),
    required this.packageInfo,
  });

  final PackageInfo packageInfo;

  @override
  State<ForceUpdatePage> createState() => _ForceUpdatePageState();
}

class _ForceUpdatePageState extends AppState<ForceUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      backgroundColor: theme.color.bg,
      child: Center(
        child: Stack(
          children: [
            ColumnLayout(
              mainAxisSize: MainAxisSize.min,
              minWidth: 240.0,
              maxWidth: 480.0,
              children: [
                ColumnLayout(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  gap: 24.0,
                  padding: const EdgeInsetsDirectional.only(
                      start: 32.0, end: 32.0, top: 40, bottom: 24),
                  children: [
                    Assets.logo.icon.svgIcon(size: 40.0),
                    ColumnLayout(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      gap: 8.0,
                      children: [
                        AppText(
                          Strings.common.title.forceUpdate,
                          style: AppTextStyleBuilder
                              .header.s18.semiBold.colorPrimary
                              .build(context),
                          textAlign: TextAlign.center,
                        ),
                        AppText(
                          Strings.common.message.forceUpdate,
                          style: AppTextStyleBuilder
                              .runningText.s14.regular.colorPrimary
                              .build(context),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                RowLayout(
                  mainAxisAlignment: MainAxisAlignment.center,
                  gap: 16.0,
                  children: [
                    AppButton(
                      size: WidgetSize.lg,
                      text: Strings.common.button.updateNow,
                      onPress: () => AppUrlScheme.launchExternalApp(Uri.parse(
                          'https://play.google.com/store/apps/details?id=${widget.packageInfo.packageName}')),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
