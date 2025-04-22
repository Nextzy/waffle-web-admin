import 'package:design_system/lib.dart';

class EmbedFacebookPost extends AppStatelessWidget {
  const EmbedFacebookPost(
      {super.key,
      required this.url,
      this.width = 500,
      this.height = 583,
      this.showText = false,
      this.allowFullscreen = true});

  final String url;
  final double width;
  final double height;
  final bool showText;
  final bool allowFullscreen;

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
        src="https://www.facebook.com/plugins/post.php?href=$url&width=$width&show_text=$showText&height=$height&appId"
        width="$width"
        height="$height"
        style="border:none;overflow:hidden"
        scrolling="no"
        frameborder="0"
        allowfullscreen="$allowFullscreen"
        allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share">
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
