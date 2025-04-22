import 'package:design_system/lib.dart';

class AppTreeViewItem extends AppStatefulWidget {
  const AppTreeViewItem(
      {super.key,
      this.icon,
      required this.text,
      this.children,
      this.expanded = false});

  final String? icon;
  final String text;
  final List<AppTreeViewItem>? children;
  final bool expanded;

  @override
  AppState<AppTreeViewItem> createState() => _AppTreeViewItemState();
}

class _AppTreeViewItemState extends AppState<AppTreeViewItem> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _expanded = widget.expanded;
  }

  void _toggleExpand() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(gap: 8, children: [
      GestureContainerLayout(
        onPress: widget.children.isNotEmptyOrNull ? _toggleExpand : null,
        padding: const EdgeInsets.all(4),
        borderRadius: context.theme.borderRadius.md,
        child: RowLayout(
          gap: 8,
          children: [
            if (widget.children.isNotEmptyOrNull)
              if (_expanded)
                Assets.icon.caretDownRegular.svgIcon(
                  colorFilter: ColorFilter.mode(
                      context.theme.color.iconPrimary, BlendMode.srcIn),
                  size: 14,
                )
              else
                Assets.icon.caretRightRegular.svgIcon(
                  colorFilter: ColorFilter.mode(
                      context.theme.color.iconPrimary, BlendMode.srcIn),
                  size: 14,
                ),
            if (widget.icon.isNotNullOrBlank)
              widget.icon.toSvgIcon(
                colorFilter: ColorFilter.mode(
                    context.theme.color.iconPrimary, BlendMode.srcIn),
                size: 14,
              ),
            AppText(widget.text,
                style: TextStyle(
                  color: context.theme.color.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
      ),
      if (_expanded)
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: ColumnLayout(
            gap: 8,
            children: widget.children!,
          ),
        )
    ]);
  }
}
