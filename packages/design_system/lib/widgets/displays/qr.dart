import 'package:design_system/lib.dart';

class AppQrImage extends AppStatelessWidget {
  const AppQrImage({
    super.key,
    this.uri,
    this.path,
  });

  final Uri? uri;
  final String? path;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: QrImageView(
          data: path ?? uri.toString(),
          size: 200,
        ),
      ),
    );
  }
}
