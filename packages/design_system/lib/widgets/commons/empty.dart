import 'package:design_system/lib.dart';

enum AppEmptyAccent { light, medium, strong }

class AppEmpty extends AppStatelessWidget {
  const AppEmpty({
    super.key,
    super.size,
    super.state = FullWidgetState.normal,
    this.accent = AppEmptyAccent.medium,
    this.padding,
    this.feedbackState,
    this.image,
    this.icon,
    this.title,
    this.description,
    this.center = false,
    this.action,
    this.buttonPrimaryText,
    this.buttonSecondaryText,
    this.buttonTertiaryText,
    this.onPrimaryPress,
    this.onSecondaryPress,
    this.onTertiaryPress,
  });

  final String? icon;
  final Widget? image;
  final String? title;
  final String? description;
  final EdgeInsetsGeometry? padding;
  final AppEmptyAccent accent;
  final FeedbackState? feedbackState;
  final bool center;
  final Widget? action;
  final String? buttonPrimaryText;
  final String? buttonSecondaryText;
  final String? buttonTertiaryText;
  final VoidCallback? onPrimaryPress;
  final VoidCallback? onSecondaryPress;
  final VoidCallback? onTertiaryPress;

  @override
  Widget build(BuildContext context) => ColumnLayout(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            center ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        gap: _getGap(size),
        padding: padding,
        children: [
          if (icon != null && accent == AppEmptyAccent.medium)
            buildFeedbackIcon(
              context,
              feedbackState: feedbackState,
              icon: icon,
            ),
          if (icon != null && accent != AppEmptyAccent.medium)
            icon.toSvgIcon(
              color: _getContentColor(context, accent: accent),
              size: 24.0,
            ),
          if (image != null)
            ContainerLayout(
              maxWidth: 256,
              child: image!,
            ),
          ColumnLayout(
            gap: _getGap(size),
            children: [
              ColumnLayout(
                crossAxisAlignment: center
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                gap: 4,
                children: [
                  if (title.isNotNullOrEmpty)
                    AppText(
                      title,
                      textAlign: center ? TextAlign.center : TextAlign.start,
                      style: _getTitleTextStyle(
                        context,
                        size: size,
                      ),
                    ),
                  if (description.isNotNullOrEmpty)
                    AppText(
                      description,
                      textAlign: center ? TextAlign.center : TextAlign.start,
                      style: AppTextStyleBuilder.ui.s16
                          .color(_getContentColor(context, accent: accent))
                          .build(context),
                    ),
                ],
              ),
              buildAction(
                context,
                size: size,
                action: action,
                feedbackState: feedbackState,
                center: center,
                buttonPrimaryText: buttonPrimaryText,
                buttonSecondaryText: buttonSecondaryText,
                buttonTertiaryText: buttonTertiaryText,
                onPrimaryPress: onPrimaryPress,
                onSecondaryPress: onSecondaryPress,
                onTertiaryPress: onTertiaryPress,
              ),
            ],
          ),
        ],
      );

  Widget buildAction(
    BuildContext context, {
    required WidgetSize size,
    required Widget? action,
    required FeedbackState? feedbackState,
    required bool center,
    required String? buttonPrimaryText,
    required String? buttonSecondaryText,
    required String? buttonTertiaryText,
    required VoidCallback? onPrimaryPress,
    required VoidCallback? onSecondaryPress,
    required VoidCallback? onTertiaryPress,
  }) =>
      ColumnLayout(
        mainAxisSize: MainAxisSize.min,
        children: [
          action ??
              RowLayout(
                mainAxisAlignment:
                    center ? MainAxisAlignment.center : MainAxisAlignment.start,
                gap: switch (size) {
                  (WidgetSize.xxs ||
                        WidgetSize.xs ||
                        WidgetSize.sm ||
                        WidgetSize.md) =>
                    12.0,
                  (WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) => 16.0,
                },
                children: [
                  if (onPrimaryPress != null)
                    buildPrimaryButton(
                      context,
                      size: size,
                      text: buttonPrimaryText ?? '',
                      feedbackState: feedbackState,
                      onPress: onPrimaryPress,
                    ),
                  if (onSecondaryPress != null)
                    buildSecondaryButton(
                      context,
                      size: size,
                      text: buttonSecondaryText ?? '',
                      onPress: onSecondaryPress,
                    ),
                  if (onTertiaryPress != null)
                    buildTertiaryButton(
                      context,
                      size: size,
                      text: buttonTertiaryText ?? '',
                      expanded: true,
                      onPress: onTertiaryPress,
                    ),
                ],
              ),
        ],
      );

  Widget buildFeedbackIcon(
    BuildContext context, {
    required FeedbackState? feedbackState,
    required String? icon,
  }) {
    switch (feedbackState) {
      case FeedbackState.info:
        return ContainerLayout(
          height: 32.0,
          width: 32.0,
          backgroundColor: context.theme.color.bgBlue,
          borderRadius: BorderRadius.circular(1000.00),
          border: Border.all(
            width: 8.0,
            color: context.theme.color.bgSubtleBlue,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          child: Center(
            child: AppText(
              'i',
              style: AppTextStyleBuilder.header.s18.semiBold.colorPrimaryOnColor
                  .build(context),
            ),
          ),
        );
      case FeedbackState.negative:
        return ContainerLayout(
          height: 32.0,
          width: 32.0,
          backgroundColor: context.theme.color.bgNegative,
          borderRadius: BorderRadius.circular(1000.00),
          border: Border.all(
            width: 8.0,
            color: context.theme.color.bgSubtleNegative,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          child: Center(
            child: AppText(
              '✗',
              style: AppTextStyleBuilder.header.s18.semiBold.colorPrimaryOnColor
                  .build(context),
            ),
          ),
        );
      case FeedbackState.warning:
        return ContainerLayout(
          height: 32.0,
          width: 32.0,
          backgroundColor: context.theme.color.bgWarning,
          borderRadius: BorderRadius.circular(1000.00),
          border: Border.all(
            width: 8.0,
            color: context.theme.color.bgSubtleWarning,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          child: Center(
            child: AppText(
              '✗',
              style: AppTextStyleBuilder.header.s18.semiBold.colorPrimaryOnColor
                  .build(context),
            ),
          ),
        );
      case FeedbackState.positive:
        return ContainerLayout(
          height: 32.0,
          width: 32.0,
          backgroundColor: context.theme.color.bgPositive,
          borderRadius: BorderRadius.circular(1000.00),
          border: Border.all(
            width: 8.0,
            color: context.theme.color.bgSubtlePositive,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          child: Center(
            child: AppText(
              '✓',
              style: AppTextStyleBuilder.header.s18.semiBold.colorPrimaryOnColor
                  .build(context),
            ),
          ),
        );
      case null:
        return ContainerLayout(
          height: 32.0,
          width: 32.0,
          backgroundColor: context.theme.color.bgSurface2,
          borderRadius: BorderRadius.circular(1000.00),
          border: Border.all(
            width: 8.0,
            color: context.theme.color.bgSurface2,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          child: Center(
            child: icon.toSvgIcon(
              color: _getContentColor(context, accent: accent),
              size: 24,
            ),
          ),
        );
    }
  }

  Widget buildPrimaryButton(
    BuildContext context, {
    bool expanded = false,
    required WidgetSize size,
    required String text,
    required FeedbackState? feedbackState,
    required VoidCallback? onPress,
  }) =>
      feedbackState == FeedbackState.negative
          ? AppDestructiveButton(
              size: size,
              text: text,
              expanded: expanded,
              onPress: onPress,
            )
          : AppButton(
              size: size,
              text: text,
              expanded: expanded,
              onPress: onPress,
            );

  Widget buildSecondaryButton(
    BuildContext context, {
    required WidgetSize size,
    bool expanded = false,
    required String text,
    required VoidCallback? onPress,
  }) =>
      AppOutlineButton(
        size: size,
        expanded: expanded,
        text: text,
        onPress: onPress,
      );

  Widget buildTertiaryButton(
    BuildContext context, {
    required WidgetSize size,
    required String text,
    bool expanded = false,
    required VoidCallback? onPress,
  }) =>
      AppTextButton(
        size: size,
        expanded: expanded,
        text: text,
        onPress: onPress,
      );

  double _getGap(WidgetSize size) => switch (size) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm || WidgetSize.md) =>
          16.0,
        (WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) => 24.0,
      };

  TextStyle _getTitleTextStyle(
    BuildContext context, {
    required WidgetSize size,
  }) =>
      switch (size) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) =>
          AppTextStyleBuilder.ui.s12.semiBold
              .color(_getContentColor(context, accent: accent))
              .build(context),
        (WidgetSize.md || WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          AppTextStyleBuilder.ui.s18.semiBold
              .color(_getContentColor(context, accent: accent))
              .build(context),
      };

  Color _getContentColor(BuildContext context,
          {required AppEmptyAccent accent}) =>
      switch (accent) {
        AppEmptyAccent.light => context.theme.color.textSecondary,
        AppEmptyAccent.medium => context.theme.color.textPrimary,
        AppEmptyAccent.strong => context.theme.color.textPrimary,
      };
}
