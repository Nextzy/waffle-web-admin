import 'package:design_system/lib.dart';

class EmbedTwitterPost extends AppStatelessWidget {
  const EmbedTwitterPost(
      {super.key, required this.url, this.width = 500, this.height = 600});

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
      <blockquote class="twitter-tweet">
        <a href="$url"></a>
      </blockquote>
      <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
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
