import 'package:design_system/lib.dart';

enum AppNavigationType { brand, back, inverse }

class AppTopNavigationBar extends AppStatelessWidget
    implements PreferredSizeWidget {
  AppTopNavigationBar({
    super.key,
    this.type = AppNavigationType.brand,
    this.title,
    this.textAlign = TextAlign.center,
    this.backgroundColor,
    this.border = false,
    this.showBackButtonWhenCanPop = false,
    this.disabled = false,
    this.systemOverlayStyle,
    List<Widget>? leadWidgets,
    List<Widget>? actionWidgets,
  })  : _leadWidgets = leadWidgets ?? [],
        _actionWidgets = actionWidgets ?? [];

  static const double height = 56;

  final AppNavigationType type;
  final String? title;
  final bool showBackButtonWhenCanPop;
  final bool disabled;
  final TextAlign textAlign;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Color? backgroundColor;
  final bool border;
  final List<Widget> _leadWidgets;
  final List<Widget> _actionWidgets;

  @override
  Size get preferredSize => const Size(double.infinity, height);

  @override
  Widget build(BuildContext context) {
    final paddingValue = getTheme(context).space.md;
    final logoUri = Uri.parse(Assets.logo.iconText.keyName);

    return SafeArea(
      child: ContainerLayout(
        border: _getBorder(context, type: type, border: border),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle:
              systemOverlayStyle ?? context.theme.systemOverlayStyle,
          titleSpacing: 0,
          backgroundColor:
              _getBackgroundColor(context, type: type, color: backgroundColor),
          leadingWidth: paddingValue + 40 + paddingValue,
          leading: buildLeading(
            context,
            type: type,
            leadWidgets: _leadWidgets,
            disabled: disabled,
          ),
          centerTitle: true,
          title: buildContent(
            context,
            type: type,
            logoUri: logoUri,
            title: title,
          ),
          elevation: 0,
          actions: _actionWidgets,
        ),
      ),
    );
  }

  ///========================= PRIVATE METHOD =========================///
  Widget buildContent(
    BuildContext context, {
    required AppNavigationType type,
    required Uri logoUri,
    required String? title,
  }) =>
      switch (type) {
        AppNavigationType.brand => AppImage(
          path: Assets.logo.iconText.keyName,
            height: 24,
            borderRadius: BorderRadius.zero,
          ),
        AppNavigationType.back => title.isNotNullOrEmpty
            ? AppText(
                title,
                maxLines: 1,
                style: _getTextStyle(context, type: type),
                textAlign: textAlign,
                overflow: TextOverflow.ellipsis,
              )
            : const SizedBox(),
        AppNavigationType.inverse => title.isNotNullOrEmpty
            ? AppText(
                title,
                maxLines: 1,
                style: _getTextStyle(context, type: type),
                textAlign: textAlign,
                overflow: TextOverflow.ellipsis,
              )
            : const SizedBox()
      };

  Widget? buildLeading(
    BuildContext context, {
    required AppNavigationType type,
    required bool disabled,
    required List<Widget> leadWidgets,
  }) =>
      Center(
        child: RowLayout(
          padding: const EdgeInsetsDirectional.only(start: 8.0),
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (type == AppNavigationType.back)
              Center(
                child: AppBackButton(
                  size: WidgetSize.lg,
                  disabled: disabled,
                  onPress: () => _onClickBack(context),
                ),
              ),
            if (type == AppNavigationType.inverse)
              Center(
                child: AppBackButton(
                  size: WidgetSize.lg,
                  color: Colors.white,
                  disabled: disabled,
                  onPress: () => _onClickBack(context),
                ),
              ),
            if (type == AppNavigationType.back ||
                type == AppNavigationType.inverse)
              const Gap(4.0),
            ...leadWidgets,
          ],
        ),
      );

  Border? _getBorder(
    BuildContext context, {
    required AppNavigationType type,
    required bool border,
  }) =>
      border
          ? switch (type) {
              AppNavigationType.back => Border(
                  bottom: BorderSide(
                    width: 1.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignInside,
                    color: context.theme.color.iconPrimary,
                  ),
                ),
              AppNavigationType.brand => null,
              AppNavigationType.inverse => null,
            }
          : null;

  Color _getBackgroundColor(
    BuildContext context, {
    required AppNavigationType type,
    required Color? color,
  }) =>
      switch (type) {
        AppNavigationType.back => color ?? getTheme(context).color.bg,
        AppNavigationType.brand => color ?? getTheme(context).color.bg,
        AppNavigationType.inverse => color ?? getTheme(context).color.bgInverse,
      };

  TextStyle _getTextStyle(
    BuildContext context, {
    required AppNavigationType type,
  }) =>
      switch (type) {
        AppNavigationType.brand => AppTextStyleBuilder.ui.s18.semiBold
            .color(getTheme(context).color.textPrimary)
            .build(context),
        AppNavigationType.back => AppTextStyleBuilder.ui.s18.semiBold
            .color(getTheme(context).color.textPrimary)
            .build(context),
        AppNavigationType.inverse => AppTextStyleBuilder.ui.s18.semiBold
            .color(getTheme(context).color.textPrimaryInverse)
            .build(context),
      };

  ///========================= PRIVATE METHOD =========================///
  void _onClickBack(BuildContext context) {
    if (context.canPop() &&
        ModalRoute.of(context)?.popDisposition !=
            RoutePopDisposition.doNotPop) {
      context.pop();
    }
  }
}
