import 'package:design_system/lib.dart';

class AppRichTextEditor extends AppStatefulWidget {
  const AppRichTextEditor({super.key});

  @override
  AppState<AppRichTextEditor> createState() => _AppRichTextEditorState();
}

class _AppRichTextEditorState extends AppState<AppRichTextEditor> {
  FleatherController? _controller;

  @override
  void initState() {
    super.initState();
    if (kIsWeb) BrowserContextMenu.disableContextMenu();
    _controller = FleatherController();
  }

  void _onLaunchUrl(String? url) async {
    if (url == null) return;
    final uri = Uri.parse(url);
    final canLaunch = await canLaunchUrl(uri);
    if (canLaunch) {
      await AppUrlScheme.launchExternalApp(uri);
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (kIsWeb) BrowserContextMenu.enableContextMenu();
  }

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      decoration: BoxDecoration(
        border: Border.all(color: context.theme.color.border),
        borderRadius: context.theme.borderRadius.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FleatherToolbar.basic(controller: _controller!),
          FleatherEditor(
            controller: _controller!,
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            onLaunchUrl: _onLaunchUrl,
            embedBuilder: _embedBuilder,
          ),
        ],
      ),
    );
  }

  Widget _embedBuilder(BuildContext context, EmbedNode node) {
    if (node.value.type == 'icon') {
      final data = node.value.data;
      return Icon(
        IconData(int.parse(data['codePoint']), fontFamily: data['fontFamily']),
        color: Color(int.parse(data['color'])),
        size: 18,
      );
    }
    if (node.value.type == 'image') {
      final sourceType = node.value.data['source_type'];
      ImageProvider? image;
      if (sourceType == 'assets') {
        image = AssetImage(node.value.data['source']);
      } else if (sourceType == 'file') {
        image = FileImage(File(node.value.data['source']));
      } else if (sourceType == 'url') {
        image = NetworkImage(node.value.data['source']);
      }
      if (image != null) {
        return Padding(
          padding: const EdgeInsets.only(left: 4, right: 2, top: 2, bottom: 2),
          child: ContainerLayout(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: image, fit: BoxFit.cover),
            ),
          ),
        );
      }
    }
    return defaultFleatherEmbedBuilder(context, node);
  }
}
