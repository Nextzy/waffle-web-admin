import 'package:design_system/lib.dart';

enum AppModalContentAlign {
  start,
  center,
}

enum AppModalActionAlign {
  start,
  center,
  end,
  fullWidthHorizontal,
  fullWidthVertical
}

class AppModal extends AppStatelessWidget {
  const AppModal({
    super.key,
    this.title,
    this.description,
    this.content,
    this.contentAlign = AppModalContentAlign.center,
    this.icon,
    this.image,
    this.backgroundColor,
    this.action,
    this.actionAlign = AppModalActionAlign.fullWidthHorizontal,
    this.feedbackState,
    this.borderRadius,
    this.onClosed,
    this.buttonPrimaryText,
    this.buttonSecondaryText,
    this.buttonTertiaryText,
    this.onPrimaryPress,
    this.onSecondaryPress,
    this.onTertiaryPress,
  });

  final FeedbackState? feedbackState;
  final String? title;
  final String? description;
  final String? icon;
  final String? image;
  final Color? backgroundColor;
  final Widget? content;
  final BorderRadius? borderRadius;
  final AppModalContentAlign? contentAlign;
  final AppModalActionAlign? actionAlign;
  final Widget? action;
  final String? buttonPrimaryText;
  final String? buttonSecondaryText;
  final String? buttonTertiaryText;
  final VoidCallback? onPrimaryPress;
  final VoidCallback? onSecondaryPress;
  final VoidCallback? onTertiaryPress;
  final VoidCallback? onClosed;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          ColumnLayout(
            mainAxisSize: MainAxisSize.min,
            minWidth: 240.0,
            maxWidth: 480.0,
            backgroundColor: backgroundColor ?? theme.color.bgPopover,
            borderRadius: borderRadius ?? theme.borderRadius.md,
            dropShadow: theme.shadow.xl,
            children: [
              buildContent(
                context,
                content: content,
                title: title,
                description: description,
                icon: icon,
                image: image,
                feedbackState: feedbackState,
                contentAlign: contentAlign,
              ),
              buildAction(context,
                  action: action,
                  feedbackState: feedbackState,
                  actionAlign: actionAlign,
                  buttonPrimaryText: buttonPrimaryText,
                  buttonSecondaryText: buttonSecondaryText,
                  buttonTertiaryText: buttonTertiaryText,
                  onPrimaryPress: onPrimaryPress,
                  onSecondaryPress: onSecondaryPress,
                  onTertiaryPress: onTertiaryPress),
            ],
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: AppCloseButton(
                size: WidgetSize.lg,
                color: theme.color.iconTertiary,
                onPress: () => _onClosePress(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContent(
    BuildContext context, {
    required Widget? content,
    required String? title,
    required String? description,
    required String? icon,
    required String? image,
    required FeedbackState? feedbackState,
    required AppModalContentAlign? contentAlign,
  }) {
    return ColumnLayout(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      gap: 24.0,
      padding: const EdgeInsetsDirectional.only(
          start: 32.0, end: 32.0, top: 40, bottom: 24),
      children: [
        if (feedbackState != null)
          RowLayout(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFeedbackIcon(context, feedbackState: feedbackState),
            ],
          ),
        if (icon.isNotNullOrBlank) icon.toSvgIcon(size: 40.0),
        if (image.isNotNullOrBlank) AppImage(width: 256.0, path: image!),
        content ??
            ColumnLayout(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              gap: 8.0,
              children: [
                AppText(
                  title,
                  style: AppTextStyleBuilder.header.s18.semiBold.colorPrimary
                      .build(context),
                  textAlign: switch (contentAlign) {
                    AppModalContentAlign.start => TextAlign.start,
                    AppModalContentAlign.center => TextAlign.center,
                    null => TextAlign.center,
                  },
                ),
                AppText(
                  description,
                  style: AppTextStyleBuilder
                      .runningText.s14.regular.colorPrimary
                      .build(context),
                  textAlign: switch (contentAlign) {
                    AppModalContentAlign.start => TextAlign.start,
                    AppModalContentAlign.center => TextAlign.center,
                    null => TextAlign.center,
                  },
                ),
              ],
            ),
      ],
    );
  }

  Widget buildFeedbackIcon(
    BuildContext context, {
    required FeedbackState feedbackState,
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
    }
  }

  Widget buildAction(
    BuildContext context, {
    required Widget? action,
    required FeedbackState? feedbackState,
    required AppModalActionAlign? actionAlign,
    required String? buttonPrimaryText,
    required String? buttonSecondaryText,
    required String? buttonTertiaryText,
    required VoidCallback? onPrimaryPress,
    required VoidCallback? onSecondaryPress,
    required VoidCallback? onTertiaryPress,
  }) =>
      ColumnLayout(
        mainAxisSize: MainAxisSize.min,
        padding: const EdgeInsetsDirectional.only(
            start: 32.0, end: 32.0, top: 0.0, bottom: 32.0),
        children: [
          action ??
              switch (actionAlign) {
                AppModalActionAlign.start => RowLayout(
                    mainAxisAlignment: MainAxisAlignment.start,
                    gap: 16.0,
                    children: [
                      if (onPrimaryPress != null)
                        buildPrimaryButton(
                          context,
                          text: buttonPrimaryText ?? '',
                          feedbackState: feedbackState,
                          onPress: onPrimaryPress,
                        ),
                      if (onSecondaryPress != null)
                        buildSecondaryButton(
                          context,
                          text: buttonSecondaryText ?? '',
                          onPress: onSecondaryPress,
                        ),
                      if (onTertiaryPress != null)
                        buildTertiaryButton(
                          context,
                          text: buttonTertiaryText ?? '',
                          expanded: true,
                          onPress: onTertiaryPress,
                        ),
                    ],
                  ),
                AppModalActionAlign.center => RowLayout(
                    mainAxisAlignment: MainAxisAlignment.center,
                    gap: 16.0,
                    children: [
                      if (onTertiaryPress != null)
                        buildTertiaryButton(
                          context,
                          text: buttonTertiaryText ?? '',
                          expanded: true,
                          onPress: onTertiaryPress,
                        ),
                      if (onSecondaryPress != null)
                        buildSecondaryButton(
                          context,
                          text: buttonSecondaryText ?? '',
                          onPress: onSecondaryPress,
                        ),
                      if (onPrimaryPress != null)
                        buildPrimaryButton(
                          context,
                          text: buttonPrimaryText ?? '',
                          feedbackState: feedbackState,
                          onPress: onPrimaryPress,
                        ),
                    ],
                  ),
                AppModalActionAlign.end => RowLayout(
                    mainAxisAlignment: MainAxisAlignment.end,
                    gap: 16.0,
                    children: [
                      if (onTertiaryPress != null)
                        buildTertiaryButton(
                          context,
                          text: buttonTertiaryText ?? '',
                          expanded: true,
                          onPress: onTertiaryPress,
                        ),
                      if (onSecondaryPress != null)
                        buildSecondaryButton(
                          context,
                          text: buttonSecondaryText ?? '',
                          onPress: onSecondaryPress,
                        ),
                      if (onPrimaryPress != null)
                        buildPrimaryButton(
                          context,
                          text: buttonPrimaryText ?? '',
                          feedbackState: feedbackState,
                          onPress: onPrimaryPress,
                        ),
                    ],
                  ),
                AppModalActionAlign.fullWidthHorizontal => RowLayout(
                    mainAxisSize: MainAxisSize.max,
                    gap: 16.0,
                    children: [
                      if (onTertiaryPress != null)
                        Expanded(
                          child: buildTertiaryButton(
                            context,
                            text: buttonTertiaryText ?? '',
                            expanded: true,
                            onPress: onTertiaryPress,
                          ),
                        ),
                      if (onSecondaryPress != null)
                        Expanded(
                          child: buildSecondaryButton(
                            context,
                            text: buttonSecondaryText ?? '',
                            expanded: true,
                            onPress: onSecondaryPress,
                          ),
                        ),
                      if (onPrimaryPress != null)
                        Expanded(
                          child: buildPrimaryButton(
                            context,
                            text: buttonPrimaryText ?? '',
                            expanded: true,
                            feedbackState: feedbackState,
                            onPress: onPrimaryPress,
                          ),
                        ),
                    ],
                  ),
                AppModalActionAlign.fullWidthVertical => ColumnLayout(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    gap: 8.0,
                    children: [
                      if (onPrimaryPress != null)
                        buildPrimaryButton(
                          context,
                          expanded: true,
                          text: buttonPrimaryText ?? '',
                          feedbackState: feedbackState,
                          onPress: onPrimaryPress,
                        ),
                      if (onSecondaryPress != null)
                        buildSecondaryButton(
                          context,
                          expanded: true,
                          text: buttonSecondaryText ?? '',
                          onPress: onSecondaryPress,
                        ),
                      if (onTertiaryPress != null)
                        buildTertiaryButton(
                          context,
                          text: buttonTertiaryText ?? '',
                          expanded: true,
                          onPress: onTertiaryPress,
                        ),
                    ],
                  ),
                null => RowLayout(
                    mainAxisAlignment: MainAxisAlignment.center,
                    gap: 16.0,
                    children: [
                      if (onTertiaryPress != null)
                        Expanded(
                          child: buildTertiaryButton(
                            context,
                            text: buttonTertiaryText ?? '',
                            expanded: true,
                            onPress: onTertiaryPress,
                          ),
                        ),
                      if (onSecondaryPress != null)
                        Expanded(
                          child: buildSecondaryButton(
                            context,
                            text: buttonSecondaryText ?? '',
                            expanded: true,
                            onPress: onSecondaryPress,
                          ),
                        ),
                      if (onPrimaryPress != null)
                        Expanded(
                          child: buildPrimaryButton(
                            context,
                            text: buttonPrimaryText ?? '',
                            expanded: true,
                            feedbackState: feedbackState,
                            onPress: onPrimaryPress,
                          ),
                        ),
                    ],
                  )
              },
        ],
      );

  Widget buildPrimaryButton(
    BuildContext context, {
    bool expanded = false,
    required String text,
    required FeedbackState? feedbackState,
    required VoidCallback? onPress,
  }) =>
      feedbackState == FeedbackState.negative
          ? AppDestructiveButton(
              size: WidgetSize.lg,
              text: text,
              expanded: expanded,
              onPress: onPress,
            )
          : AppButton(
              size: WidgetSize.lg,
              text: text,
              expanded: expanded,
              onPress: onPress,
            );

  Widget buildSecondaryButton(
    BuildContext context, {
    bool expanded = false,
    required String text,
    required VoidCallback? onPress,
  }) =>
      AppOutlineButton(
        size: WidgetSize.lg,
        expanded: expanded,
        text: text,
        onPress: onPress,
      );

  Widget buildTertiaryButton(
    BuildContext context, {
    bool expanded = false,
    required String text,
    required VoidCallback? onPress,
  }) =>
      AppTextButton(
        size: WidgetSize.lg,
        expanded: expanded,
        text: text,
        onPress: onPress,
      );

  void _onClosePress(BuildContext context) {
    onClosed?.call();
    if (context.canPop()) {
      context.pop();
    }
  }
}
