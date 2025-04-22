import 'package:design_system/lib.dart';

class AppHorizontalTab extends AppStatefulWidget {
  const AppHorizontalTab(
      {super.key,
      super.size = WidgetSize.md,
      this.style = AppTabStyle.filled,
      required this.children,
      this.defaultValue = 0,
      this.onChanged});

  final AppTabStyle style;
  final List<AppTab> children;
  final int defaultValue;

  final ValueChanged<int>? onChanged;

  @override
  AppState<AppHorizontalTab> createState() => _AppHorizontalTabState();
}

class _AppHorizontalTabState extends AppState<AppHorizontalTab> {
  late int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.defaultValue;
  }

  void _selectTab(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });

      if (widget.onChanged != null) {
        widget.onChanged!(index);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: borderRadius,
      ),
      child: RowLayout(mainAxisSize: MainAxisSize.min, gap: gap, children: [
        for (final child in widget.children)
          InkWell(
            onTap: child.disabled
                ? null
                : () => _selectTab(widget.children.indexOf(child)),
            child: AppTab(
              size: widgetSize,
              style: widget.style,
              icon: child.icon,
              text: child.text,
              active: widget.children.indexOf(child) == _currentIndex,
              first: widget.children.indexOf(child) == 0,
              last:
                  widget.children.indexOf(child) == widget.children.length - 1,
              disabled: child.disabled,
            ),
          ),
      ]),
    );
  }

  EdgeInsets? get padding => switch (widget.style) {
        AppTabStyle.filled => const EdgeInsets.all(2),
        AppTabStyle.shade => const EdgeInsets.all(2),
        AppTabStyle.outlined => null,
        AppTabStyle.underline => null,
      };

  double get gap => switch (widget.style) {
        AppTabStyle.filled => 2,
        AppTabStyle.shade => 4,
        AppTabStyle.outlined => 0,
        AppTabStyle.underline => 0,
      };

  Color get backgroundColor => switch (widget.style) {
        AppTabStyle.filled => context.theme.color.bgSurface2,
        AppTabStyle.shade => context.theme.color.bgTab,
        AppTabStyle.outlined => context.theme.color.bgTab,
        AppTabStyle.underline => context.theme.color.bgTab,
      };

  Border? get border => switch (widget.style) {
        AppTabStyle.filled => null,
        AppTabStyle.shade => null,
        AppTabStyle.outlined => Border.all(color: context.theme.color.border),
        AppTabStyle.underline => null,
      };

  BorderRadius get borderRadius => switch (widget.style) {
        AppTabStyle.filled => context.theme.borderRadius.md,
        AppTabStyle.shade => context.theme.borderRadius.md,
        AppTabStyle.outlined => context.theme.borderRadius.md,
        AppTabStyle.underline => context.theme.borderRadius.zero,
      };
}
