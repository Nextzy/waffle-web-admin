import 'package:design_system/lib.dart';

class EmbedGoogleMap extends AppStatelessWidget {
  const EmbedGoogleMap({
    super.key,
    required this.url,
    this.width = 600,
    this.height = 450,
  });

  final String url;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    String iframeHTML = '''
    <!DOCTYPE html>
    <html>
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="margin:0;padding:0;overflow:hidden;">
      <iframe
        src="$url"
        width="$width"
        height="$height"
        style="border:0;"
        allowfullscreen=""
        loading="lazy"
        referrerpolicy="no-referrer-when-downgrade">
      </iframe>
    </body>
    </html>
  ''';

    return ContainerLayout(
      width: width,
      height: height,
      child: InAppWebView(
        initialData: InAppWebViewInitialData(data: iframeHTML),
      ),
    );
  }
}
