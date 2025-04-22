import 'package:design_system/lib.dart';

class AppDotPagination extends AppStatefulWidget {
  const AppDotPagination(
      {super.key,
      super.size = WidgetSize.md,
      required this.totalPage,
      this.onChanged});

  final int totalPage;

  final ValueChanged<int>? onChanged;

  @override
  AppState<AppDotPagination> createState() => _AppDotPaginationState();
}

class _AppDotPaginationState extends AppState<AppDotPagination> {
  int _currentPage = 1;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(_currentPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RowLayout(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.theme.color.bgSurface2,
        borderRadius: BorderRadius.circular(4),
      ),
      children: List.generate(widget.totalPage, (index) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: GestureContainerLayout(
            width: width,
            height: height,
            borderRadius: context.theme.borderRadius.md,
            backgroundColor: _currentPage == index + 1
                ? context.theme.color.iconPrimary
                : context.theme.color.iconTertiary,
            onPress: () => _onPageChanged(index + 1),
          ),
        );
      }),
    );
  }

  double get width => switch (widgetSize) {
        WidgetSize.xxs => 4,
        WidgetSize.xs => 4,
        WidgetSize.sm => 4,
        WidgetSize.md => 6,
        WidgetSize.lg => 8,
        WidgetSize.xl => 8,
        WidgetSize.xxl => 8,
      };

  double get height => switch (widgetSize) {
        WidgetSize.xxs => 4,
        WidgetSize.xs => 4,
        WidgetSize.sm => 4,
        WidgetSize.md => 6,
        WidgetSize.lg => 8,
        WidgetSize.xl => 8,
        WidgetSize.xxl => 8,
      };
}
