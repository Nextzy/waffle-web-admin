import 'package:design_system/lib.dart';

class EmbedYoutube extends AppStatelessWidget {
  const EmbedYoutube(
      {super.key, required this.url, this.width = 560, this.height = 315});

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
        width="$width"
        height="$height"
        src="$url"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin"
        allowfullscreen>
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
