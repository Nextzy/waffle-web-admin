import 'package:design_system/lib.dart';

class AppWebView extends StatefulWidget {
  const AppWebView({
    super.key,
    this.height,
    this.width,
    this.ratio,
    this.url,
    this.html,
    this.baseUrl,
    this.backgroundColor,
    this.controller,
  });

  final String? url;
  final String? html;
  final String? baseUrl;
  final double? height;
  final double? width;
  final double? ratio;
  final Color? backgroundColor;
  final InAppWebViewController? controller;

  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  late final InAppWebViewController _controller;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = widget.controller ??
  //       (WebViewController()
  //         ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //         ..setNavigationDelegate(
  //           NavigationDelegate(
  //             onProgress: (int progress) {},
  //             onPageStarted: (String url) {
  //               Log.t('Page started loading: $url');
  //             },
  //             onPageFinished: (String url) {
  //               Log.t('Page finished loading: $url');
  //             },
  //             onWebResourceError: (WebResourceError error) {
  //               Log.t(' Page resource error: code: ${error.errorCode}\n'
  //                   'description: ${error.description}\n'
  //                   'errorType: ${error.errorType}\n'
  //                   'isForMainFrame: ${error.isForMainFrame} ');
  //             },
  //             onNavigationRequest: (NavigationRequest request) {
  //               if (request.url.startsWith('https://www.youtube.com/')) {
  //                 Log.t('blocking navigation to ${request.url}');
  //                 return NavigationDecision.prevent;
  //               }
  //               Log.t('allowing navigation to ${request.url}');
  //               return NavigationDecision.navigate;
  //             },
  //             onHttpError: (HttpResponseError error) {
  //               Log.e('Error occurred on page: ${error.response?.statusCode}');
  //             },
  //             onUrlChange: (UrlChange change) {
  //               Log.t('url change to ${change.url}');
  //             },
  //             onHttpAuthRequest: (HttpAuthRequest request) {
  //               Log.t('auth request to ${request.host}');
  //             },
  //           ),
  //         ))
  //     ..enableZoom(false)
  //     ..addJavaScriptChannel(
  //       'Flutter',
  //       onMessageReceived: (JavaScriptMessage message) {
  //         Log.t(message.message);
  //       },
  //     );
  //
  //   if (widget.url.isNotNullOrBlank) {
  //     _controller.loadRequest(Uri.parse(widget.url!));
  //   } else if (widget.html.isNotNullOrEmpty) {
  //     _controller.loadHtmlString(
  //       widget.html!,
  //       baseUrl: widget.baseUrl,
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) => ContainerLayout(
        height: widget.height,
        width: widget.width,
        ratio: widget.ratio,
        backgroundColor: widget.backgroundColor,
        child: InAppWebView(
        ),
      );
}
