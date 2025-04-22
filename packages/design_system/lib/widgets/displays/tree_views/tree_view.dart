import 'package:design_system/lib.dart';

class AppTreeView extends AppStatelessWidget {
  const AppTreeView({super.key, required this.children});

  final List<AppTreeViewItem> children;

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
      crossAxisAlignment: CrossAxisAlignment.start,
      gap: 8,
      children: children,
    );
  }
}
