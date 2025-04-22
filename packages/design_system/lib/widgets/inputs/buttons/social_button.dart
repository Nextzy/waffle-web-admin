import 'package:design_system/lib.dart';

enum AppSocialButtonStyle {
  outline,
  shaded,
  filled,
}

enum AppSocialButtonType {
  google,
  twitter,
  facebook,
  apple,
  github,
  microsoft,
}

class AppSocialButton extends AppStatefulWidget {
  const AppSocialButton({
    super.key,
    super.size,
    this.style = AppSocialButtonStyle.outline,
    required this.type,
    this.width = 280,
    this.height,
    this.disabled = false,
    this.onPress,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
  });

  final AppSocialButtonStyle style;
  final AppSocialButtonType type;
  final double? width;
  final double? height;
  final bool disabled;

  final VoidCallback? onPress;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;

  @override
  AppState<AppSocialButton> createState() => _AppSocialButtonState();
}

class _AppSocialButtonState extends AppState<AppSocialButton> {
  @override
  Widget build(BuildContext context) {
    return GestureContainerLayout(
      width: widget.width,
      height: height,
      mouseCursor: SystemMouseCursors.click,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      border: widget.style == AppSocialButtonStyle.outline
          ? Border.all(
              color: context.theme.color.border,
            )
          : null,
      padding: padding,
      backgroundColor: backgroundColor,
      borderRadius: context.theme.borderRadius.md,
      disabled: widget.disabled,
      opacity: widget.disabled ? 0.5 : null,
      onPress: widget.onPress,
      onLongPress: widget.onLongPress,
      onHover: widget.onHover,
      onFocusChange: widget.onFocusChange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Gap(6),
          AppText(
            text,
            style: TextStyle(
              color: widget.style == AppSocialButtonStyle.filled
                  ? context.theme.color.textPrimaryOnColor
                  : context.theme.color.textPrimary,
              fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  double get height => switch (widgetSize) {
        WidgetSize.xxs => 24,
        WidgetSize.xs => 24,
        WidgetSize.sm => 24,
        WidgetSize.md => 32,
        WidgetSize.lg => 40,
        WidgetSize.xl => 40,
        WidgetSize.xxl => 40,
      };

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        WidgetSize.md => const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        WidgetSize.lg => const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        WidgetSize.xl => const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      };

  Color get backgroundColor => switch (widget.style) {
        AppSocialButtonStyle.outline => context.theme.color.bg,
        AppSocialButtonStyle.shaded => context.theme.color.buttonShade,
        AppSocialButtonStyle.filled => switch (widget.type) {
            AppSocialButtonType.google => Color(0xFFEA4335),
            AppSocialButtonType.twitter => Color(0xFF1DA1F2),
            AppSocialButtonType.facebook => Color(0xFF1877F2),
            AppSocialButtonType.apple => context.theme.color.buttonFilled,
            AppSocialButtonType.github => context.theme.color.buttonFilled,
            AppSocialButtonType.microsoft => Color(0xFF0067B8),
          },
      };

  String get text => switch (widget.type) {
        AppSocialButtonType.google =>
          Translations.of(context).auth.button.signInWithGoogle,
        AppSocialButtonType.twitter =>
          Translations.of(context).auth.button.signInWithTwitter,
        AppSocialButtonType.facebook =>
          Translations.of(context).auth.button.signInWithFacebook,
        AppSocialButtonType.apple =>
          Translations.of(context).auth.button.signInWithApple,
        AppSocialButtonType.github =>
          Translations.of(context).auth.button.signInWithGitHub,
        AppSocialButtonType.microsoft =>
          Translations.of(context).auth.button.signInWithMicrosoft,
      };

  Widget get icon => switch (widget.type) {
        AppSocialButtonType.google => Assets.logo.google.svgIcon(
            colorFilter: widget.style == AppSocialButtonStyle.filled
                ? ColorFilter.mode(
                    context.theme.color.textPrimaryOnColor,
                    BlendMode.srcIn,
                  )
                : null,
          ),
        AppSocialButtonType.twitter => Assets.logo.twitter.svgIcon(
            colorFilter: widget.style == AppSocialButtonStyle.filled
                ? ColorFilter.mode(
                    context.theme.color.textPrimaryOnColor,
                    BlendMode.srcIn,
                  )
                : null,
          ),
        AppSocialButtonType.facebook => Assets.logo.facebook.svgIcon(),
        AppSocialButtonType.apple => Assets.logo.apple.svgIcon(
            colorFilter: widget.style == AppSocialButtonStyle.filled
                ? ColorFilter.mode(
                    context.theme.color.iconPrimaryInverse,
                    BlendMode.srcIn,
                  )
                : null,
          ),
        AppSocialButtonType.github => Assets.logo.github.svgIcon(
            colorFilter: widget.style == AppSocialButtonStyle.filled
                ? ColorFilter.mode(
                    context.theme.color.iconPrimaryInverse,
                    BlendMode.srcIn,
                  )
                : null,
          ),
        AppSocialButtonType.microsoft => Assets.logo.microsoft.svgIcon(
            colorFilter: widget.style == AppSocialButtonStyle.filled
                ? ColorFilter.mode(
                    Color(0xFFFFFFFF),
                    BlendMode.srcIn,
                  )
                : null,
          ),
      };
}
