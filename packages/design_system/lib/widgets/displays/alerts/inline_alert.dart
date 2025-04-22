import 'package:design_system/lib.dart';

enum AppAlertAccent { light, medium, strong }

class AppInlineAlert extends AppStatelessWidget {
  const AppInlineAlert({
    super.key,
    super.size,
    this.accent = AppAlertAccent.light,
    required this.feedbackState,
    this.title,
    this.description,
    this.showIcon = true,
    this.action,
    this.buttonPrimaryText,
    this.buttonSecondaryText,
    this.onPrimaryPress,
    this.onSecondaryPress,
    this.onClosed,
  });

  final FeedbackState feedbackState;
  final AppAlertAccent accent;
  final String? title;
  final String? description;
  final bool showIcon;
  final Widget? action;
  final String? buttonPrimaryText;
  final String? buttonSecondaryText;
  final VoidCallback? onPrimaryPress;
  final VoidCallback? onSecondaryPress;
  final VoidCallback? onClosed;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);

    return RowLayout(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: _getPadding(size),
      margin: const EdgeInsets.all(20.0),
      borderRadius: theme.borderRadius.md,
      gap: _getGapValue(size),
      backgroundColor: _getBackgroundColor(
        context,
        feedbackState: feedbackState,
        accent: accent,
      ),
      border: theme.border.md.copy(
        color: _getBorderColor(
          context,
          feedbackState: feedbackState,
          accent: accent,
        ),
      ),
      children: [
        if (showIcon)
          buildIcon(
            context,
            size: size,
            feedbackState: feedbackState,
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
                        feedbackState: feedbackState,
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
                  feedbackState: feedbackState,
                  accent: accent,
                  buttonPrimaryText: buttonPrimaryText,
                  buttonSecondaryText: buttonSecondaryText,
                  onPrimaryPress: onPrimaryPress,
                  onSecondaryPress: onSecondaryPress,
                ),
            ],
          ),
        ),
        AppCloseButton(
          size: WidgetSize.sm,
          themeMode: accent == AppAlertAccent.strong
              ? (feedbackState == FeedbackState.warning
                  ? ThemeMode.light
                  : ThemeMode.dark)
              : ThemeMode.light,
          onPress: () => _onClosePress(context, onClosed: onClosed),
        ),
      ],
    );
  }

  Widget buildIcon(
    BuildContext context, {
    required WidgetSize size,
    required FeedbackState feedbackState,
    required AppAlertAccent accent,
  }) =>
      switch (feedbackState) {
        FeedbackState.info => Assets.icon.infoFilled.svgIcon(
            size: _getIconSize(size),
            color: _getIconColor(context,
                feedbackState: feedbackState, accent: accent),
          ),
        FeedbackState.negative => Assets.icon.warningFilled.svgIcon(
            size: _getIconSize(size),
            color: _getIconColor(context,
                feedbackState: feedbackState, accent: accent),
          ),
        FeedbackState.warning => Assets.icon.warningFilled.svgIcon(
            size: _getIconSize(size),
            color: _getIconColor(context,
                feedbackState: feedbackState, accent: accent),
          ),
        FeedbackState.positive => Assets.icon.checkCircleFilled.svgIcon(
            size: _getIconSize(size),
            color: _getIconColor(context,
                feedbackState: feedbackState, accent: accent),
          ),
      };

  Widget buildDefaultAction(
    BuildContext context, {
    required WidgetSize size,
    required FeedbackState feedbackState,
    required AppAlertAccent accent,
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
                  themeMode: accent == AppAlertAccent.strong
                      ? (feedbackState == FeedbackState.warning
                          ? ThemeMode.light
                          : ThemeMode.dark)
                      : ThemeMode.light,
                  size: WidgetSize.sm,
                  text: buttonPrimaryText ?? '',
                  onPress: onPrimaryPress,
                ),
              if (onSecondaryPress != null)
                AppTextButton(
                  themeMode: accent == AppAlertAccent.strong
                      ? (feedbackState == FeedbackState.warning
                          ? ThemeMode.light
                          : ThemeMode.dark)
                      : ThemeMode.light,
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
                  themeMode: accent == AppAlertAccent.strong
                      ? (feedbackState == FeedbackState.warning
                          ? ThemeMode.light
                          : ThemeMode.dark)
                      : ThemeMode.light,
                  size: WidgetSize.md,
                  text: buttonPrimaryText ?? '',
                  onPress: onPrimaryPress,
                ),
              if (onSecondaryPress != null)
                AppTextButton(
                  themeMode: accent == AppAlertAccent.strong
                      ? (feedbackState == FeedbackState.warning
                          ? ThemeMode.light
                          : ThemeMode.dark)
                      : ThemeMode.light,
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
    required FeedbackState feedbackState,
    required AppAlertAccent accent,
  }) =>
      switch (size) {
        WidgetSize.xxs ||
        WidgetSize.xs ||
        WidgetSize.sm =>
          AppTextStyleBuilder.runningText.s12.semiBold
              .color(_getContentColor(
                context,
                feedbackState: feedbackState,
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
                feedbackState: feedbackState,
                accent: accent,
              ))
              .build(context),
      };

  TextStyle _getDescriptionTextStyle(
    BuildContext context, {
    required WidgetSize size,
    required AppAlertAccent accent,
  }) =>
      switch (size) {
        WidgetSize.xxs ||
        WidgetSize.sm ||
        WidgetSize.xs =>
          AppTextStyleBuilder.runningText.s12.regular
              .color(_getContentColor(
                context,
                feedbackState: feedbackState,
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
                feedbackState: feedbackState,
                accent: accent,
              ))
              .build(context),
      };

  Color _getIconColor(
    BuildContext context, {
    required FeedbackState feedbackState,
    required AppAlertAccent accent,
  }) =>
      switch (accent) {
        AppAlertAccent.light || AppAlertAccent.medium => switch (
              feedbackState) {
            FeedbackState.info => context.theme.color.iconBlue,
            FeedbackState.negative => context.theme.color.iconNegative,
            FeedbackState.warning => context.theme.color.iconWarning,
            FeedbackState.positive => context.theme.color.iconPositive,
          },
        AppAlertAccent.strong => switch (feedbackState) {
            FeedbackState.info => context.theme.color.iconPrimaryOnColor,
            FeedbackState.negative => context.theme.color.iconPrimaryOnColor,
            FeedbackState.warning => context.theme.color.iconPrimary,
            FeedbackState.positive => context.theme.color.iconPrimaryOnColor,
          },
      };

  Color _getContentColor(
    BuildContext context, {
    required FeedbackState feedbackState,
    required AppAlertAccent accent,
  }) =>
      switch (accent) {
        AppAlertAccent.light => context.theme.color.textPrimary,
        AppAlertAccent.medium => context.theme.color.textPrimary,
        AppAlertAccent.strong => switch (feedbackState) {
            FeedbackState.info => context.theme.color.textPrimaryOnColor,
            FeedbackState.negative => context.theme.color.textPrimaryOnColor,
            FeedbackState.warning => context.theme.color.textPrimary,
            FeedbackState.positive => context.theme.color.textPrimaryOnColor,
          },
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
    required FeedbackState feedbackState,
    required AppAlertAccent accent,
  }) =>
      switch (feedbackState) {
        FeedbackState.info => switch (accent) {
            AppAlertAccent.light => context.theme.color.bg,
            AppAlertAccent.medium => context.theme.color.bgSubtleBlue,
            AppAlertAccent.strong => context.theme.color.bgBlue,
          },
        FeedbackState.negative => switch (accent) {
            AppAlertAccent.light => context.theme.color.bg,
            AppAlertAccent.medium => context.theme.color.bgSubtleNegative,
            AppAlertAccent.strong => context.theme.color.bgNegative,
          },
        FeedbackState.warning => switch (accent) {
            AppAlertAccent.light => context.theme.color.bg,
            AppAlertAccent.medium => context.theme.color.bgSubtleWarning,
            AppAlertAccent.strong => context.theme.color.bgWarning,
          },
        FeedbackState.positive => switch (accent) {
            AppAlertAccent.light => context.theme.color.bg,
            AppAlertAccent.medium => context.theme.color.bgSubtlePositive,
            AppAlertAccent.strong => context.theme.color.bgPositive,
          },
      };

  Color _getBorderColor(
    BuildContext context, {
    required FeedbackState feedbackState,
    required AppAlertAccent accent,
  }) =>
      switch (feedbackState) {
        FeedbackState.info => switch (accent) {
            AppAlertAccent.light => context.theme.color.border,
            AppAlertAccent.medium => context.theme.color.borderSubtleBlue,
            AppAlertAccent.strong => Colors.transparent,
          },
        FeedbackState.negative => switch (accent) {
            AppAlertAccent.light => context.theme.color.border,
            AppAlertAccent.medium => context.theme.color.borderSubtleNegative,
            AppAlertAccent.strong => Colors.transparent,
          },
        FeedbackState.warning => switch (accent) {
            AppAlertAccent.light => context.theme.color.border,
            AppAlertAccent.medium => context.theme.color.borderSubtleWarning,
            AppAlertAccent.strong => Colors.transparent,
          },
        FeedbackState.positive => switch (accent) {
            AppAlertAccent.light => context.theme.color.border,
            AppAlertAccent.medium => context.theme.color.borderSubtlePositive,
            AppAlertAccent.strong => Colors.transparent,
          },
      };

  void _onClosePress(BuildContext context, {required VoidCallback? onClosed}) {
    onClosed?.call();
    if (context.canPop()) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    }
  }
}
