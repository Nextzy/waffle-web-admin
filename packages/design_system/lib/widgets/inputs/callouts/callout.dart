import 'package:design_system/lib.dart';

enum AppCalloutAccent { light, medium, strong }

class AppCallout extends AppStatelessWidget {
  const AppCallout({
    super.key,
    super.size,
    this.accent = AppCalloutAccent.light,
    this.title,
    this.description,
    this.icon,
    this.action,
    this.buttonPrimaryText,
    this.buttonSecondaryText,
    this.onPrimaryPress,
    this.onSecondaryPress,
  });

  final AppCalloutAccent accent;
  final String? title;
  final String? description;
  final String? icon;
  final Widget? action;
  final String? buttonPrimaryText;
  final String? buttonSecondaryText;
  final VoidCallback? onPrimaryPress;
  final VoidCallback? onSecondaryPress;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);

    return RowLayout(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: _getPadding(size),
      borderRadius: theme.borderRadius.md,
      gap: _getGapValue(size),
      backgroundColor: _getBackgroundColor(
        context,
        accent: accent,
      ),
      border: theme.border.md.copy(
        color: _getBorderColor(
          context,
          accent: accent,
        ),
      ),
      children: [
        if (icon.isNotNullOrEmpty)
          buildIcon(
            context,
            icon: icon!,
            size: size,
            accent: accent,
          ),
        Expanded(
          child: ColumnLayout(
            gap: _getGapValue(size),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnLayout(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding: switch (size) {
                  WidgetSize.xxs ||
                  WidgetSize.xs ||
                  WidgetSize.sm =>
                    const EdgeInsetsDirectional.only(top: 1.0),
                  WidgetSize.md ||
                  WidgetSize.lg ||
                  WidgetSize.xl ||
                  WidgetSize.xxl =>
                    const EdgeInsetsDirectional.only(top: 2.0),
                },
                gap: 4.0,
                children: [
                  if (title.isNotNullOrBlank)
                    AppText(
                      title,
                      textAlign: TextAlign.start,
                      style: _getTitleTextStyle(
                        context,
                        size: size,
                        accent: accent,
                      ),
                    ),
                  if (description.isNotNullOrBlank)
                    AppText(
                      description,
                      textAlign: TextAlign.start,
                      style: _getDescriptionTextStyle(
                        context,
                        size: size,
                        accent: accent,
                      ),
                    ),
                ],
              ),
              if (onPrimaryPress != null || onSecondaryPress != null)
                buildDefaultAction(
                  context,
                  size: size,
                  accent: accent,
                  buttonPrimaryText: buttonPrimaryText,
                  buttonSecondaryText: buttonSecondaryText,
                  onPrimaryPress: onPrimaryPress,
                  onSecondaryPress: onSecondaryPress,
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildIcon(
    BuildContext context, {
    required String icon,
    required WidgetSize size,
    required AppCalloutAccent accent,
  }) =>
      icon.toSvgIcon(
        size: _getIconSize(size),
        color: _getContentColor(context, accent: accent),
      );

  Widget buildDefaultAction(
    BuildContext context, {
    required WidgetSize size,
    required AppCalloutAccent accent,
    required String? buttonPrimaryText,
    required String? buttonSecondaryText,
    required VoidCallback? onPrimaryPress,
    required VoidCallback? onSecondaryPress,
  }) =>
      switch (size) {
        WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm => RowLayout(
            gap: 8.0,
            children: [
              if (onPrimaryPress != null)
                AppShadedButton(
                  size: WidgetSize.sm,
                  text: buttonPrimaryText ?? '',
                  onPress: onPrimaryPress,
                ),
              if (onSecondaryPress != null)
                AppTextButton(
                  size: WidgetSize.sm,
                  text: buttonSecondaryText ?? '',
                  onPress: onSecondaryPress,
                )
            ],
          ),
        WidgetSize.md ||
        WidgetSize.lg ||
        WidgetSize.xl ||
        WidgetSize.xxl =>
          RowLayout(
            gap: 12.0,
            children: [
              if (onPrimaryPress != null)
                AppShadedButton(
                  size: WidgetSize.md,
                  text: buttonPrimaryText ?? '',
                  onPress: onPrimaryPress,
                ),
              if (onSecondaryPress != null)
                AppTextButton(
                  size: WidgetSize.md,
                  text: buttonSecondaryText ?? '',
                  onPress: onSecondaryPress,
                )
            ],
          ),
      };

  double _getGapValue(WidgetSize size) => switch (size) {
        WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm => 12.0,
        WidgetSize.md ||
        WidgetSize.lg ||
        WidgetSize.xl ||
        WidgetSize.xxl =>
          16.0,
      };

  double _getIconSize(WidgetSize size) => switch (size) {
        WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm => 16.0,
        WidgetSize.md ||
        WidgetSize.lg ||
        WidgetSize.xl ||
        WidgetSize.xxl =>
          24.0,
      };

  TextStyle _getTitleTextStyle(
    BuildContext context, {
    required WidgetSize size,
    required AppCalloutAccent accent,
  }) =>
      switch (size) {
        WidgetSize.xxs ||
        WidgetSize.xs ||
        WidgetSize.sm =>
          AppTextStyleBuilder.runningText.s12.semiBold
              .color(_getContentColor(
                context,
                accent: accent,
              ))
              .build(context),
        WidgetSize.md ||
        WidgetSize.lg ||
        WidgetSize.xl ||
        WidgetSize.xxl =>
          AppTextStyleBuilder.runningText.s14.semiBold
              .color(_getContentColor(
                context,
                accent: accent,
              ))
              .build(context),
      };

  TextStyle _getDescriptionTextStyle(
    BuildContext context, {
    required WidgetSize size,
    required AppCalloutAccent accent,
  }) =>
      switch (size) {
        WidgetSize.xxs ||
        WidgetSize.sm ||
        WidgetSize.xs =>
          AppTextStyleBuilder.runningText.s12.regular
              .color(_getContentColor(
                context,
                accent: accent,
              ))
              .build(context),
        WidgetSize.md ||
        WidgetSize.lg ||
        WidgetSize.xl ||
        WidgetSize.xxl =>
          AppTextStyleBuilder.runningText.s14.regular
              .color(_getContentColor(
                context,
                accent: accent,
              ))
              .build(context),
      };

  Color _getContentColor(
    BuildContext context, {
    required AppCalloutAccent accent,
  }) =>
      switch (accent) {
        AppCalloutAccent.light ||
        AppCalloutAccent.medium =>
          context.theme.color.iconPrimary,
        AppCalloutAccent.strong => context.theme.color.iconPrimaryOnColor,
      };

  EdgeInsetsDirectional _getPadding(WidgetSize size) => switch (size) {
        WidgetSize.xxs ||
        WidgetSize.xs ||
        WidgetSize.sm =>
          const EdgeInsetsDirectional.only(
              start: 12.0, top: 12.0, end: 12.0, bottom: 16.0),
        WidgetSize.md ||
        WidgetSize.lg ||
        WidgetSize.xl ||
        WidgetSize.xxl =>
          const EdgeInsetsDirectional.only(
              start: 20.0, top: 20.0, end: 20.0, bottom: 24.0),
      };

  Color _getBackgroundColor(
    BuildContext context, {
    required AppCalloutAccent accent,
  }) =>
      switch (accent) {
        AppCalloutAccent.light => context.theme.color.bg,
        AppCalloutAccent.medium => context.theme.color.bgSurface2,
        AppCalloutAccent.strong => context.theme.color.bgInverse,
      };

  Color _getBorderColor(
    BuildContext context, {
    required AppCalloutAccent accent,
  }) =>
      switch (accent) {
        AppCalloutAccent.light => context.theme.color.border,
        AppCalloutAccent.medium => context.theme.color.border,
        AppCalloutAccent.strong => Colors.transparent,
      };
}
