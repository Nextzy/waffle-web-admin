import 'package:design_system/lib.dart';

class AppAvatar extends AppStatefulWidget {
  const AppAvatar({
    super.key,
    required super.size,
    this.customSize,
    this.style = WidgetStyle.subtle,
    this.path,
    this.title,
    this.color,
    this.border,
    this.borderRadius,
    this.backgroundGradient,
    this.backgroundImage,
    this.statusRing,
    this.badge,
    this.statusDot,
    this.disabled = false,
    this.onPressed,
    this.onLongPress,
    this.theme,
  });

  final WidgetStyle style;
  final double? customSize;
  final String? title;
  final String? path;
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;
  final Gradient? backgroundGradient;
  final DecorationImage? backgroundImage;
  final bool disabled;
  final StatusRing? statusRing;
  final Badge? badge;
  final StatusDot? statusDot;
  final GestureTapCallback? onPressed;
  final GestureLongPressCallback? onLongPress;
  final AppAvatarTheme? theme;

  @override
  AppState<AppAvatar> createState() => _AppAvatarState();
}

class _AppAvatarState extends AppState<AppAvatar> {
  WidgetStyle get style => widget.theme?.style ?? widget.style;

  double? get customSize => widget.theme?.customSize ?? widget.customSize;

  String? get title => widget.theme?.title ?? widget.title;

  String? get path => widget.theme?.path ?? widget.path;

  Color? get color => widget.theme?.color ?? widget.color;

  Border? get border => widget.theme?.border ?? widget.border;

  BorderRadius? get borderRadius =>
      widget.theme?.borderRadius ?? widget.borderRadius;

  Gradient? get backgroundGradient =>
      widget.theme?.backgroundGradient ?? widget.backgroundGradient;

  DecorationImage? get backgroundImage =>
      widget.theme?.backgroundImage ?? widget.backgroundImage;

  bool get disabled => widget.theme?.disabled ?? widget.disabled;

  StatusRing? get statusRing => widget.theme?.statusRing ?? widget.statusRing;

  Badge? get badge => widget.theme?.badge ?? widget.badge;

  StatusDot? get statusDot => widget.theme?.statusDot ?? widget.statusDot;

  GestureTapCallback? get onPressed =>
      widget.theme?.onPressed ?? widget.onPressed;

  GestureLongPressCallback? get onLongPress =>
      widget.theme?.onLongPress ?? widget.onLongPress;

  bool get hasImageUri =>
      widget.path != null || widget.path.isNotNullOrBlank == true;

  double get avatarSize => switch (widgetSize) {
        WidgetSize.xxs => throw UnimplementedError(),
        WidgetSize.xs => 16.0,
        WidgetSize.sm => 24.0,
        WidgetSize.md => 32.0,
        WidgetSize.lg => 48.0,
        WidgetSize.xl => 64.0,
        WidgetSize.xxl => 96.0,
      };

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      width: customSize ?? avatarSize,
      height: customSize ?? avatarSize,
      borderRadius: borderRadius,
      border: border,
      clipBehavior: hasImageUri ? Clip.antiAliasWithSaveLayer : Clip.none,
      opacity: disabled ? 0.5 : null,
      backgroundColor: style == WidgetStyle.filled
          ? (color ?? theme.color.brandPrimary)
          : (color ?? theme.color.brandPrimary).withValues(alpha: 0.1),
      child: buildContent(
        context,
        path: path,
        style: style,
        size: widgetSize,
        title: title,
        color: color,
      ),
    );
  }

  Widget buildContent(
    BuildContext context, {
    required String? path,
    required WidgetStyle style,
    required WidgetSize size,
    required String? title,
    required Color? color,
  }) {
    if (hasImageUri) {
      return AppImage(
        path: path!,
        borderRadius: BorderRadius.zero,
      );
    }

    return Center(
      child: AppText(
        _getCharacter(size: size, title: title ?? ''),
        style: _getTextStyle(
          context,
          style: style,
          size: size,
          color: color ?? context.theme.color.brandPrimaryText,
        ),
      ),
    );
  }

  TextStyle _getTextStyle(
    BuildContext context, {
    required WidgetStyle style,
    required WidgetSize size,
    required Color? color,
  }) =>
      switch (widgetSize) {
        WidgetSize.xxs => throw UnimplementedError(),
        WidgetSize.xs => AppTextStyleBuilder.ui.semiBold
            .size(10)
            .color(style == WidgetStyle.filled
                ? context.theme.color.textPrimaryOnColor
                : color)
            .build(context),
        WidgetSize.sm => AppTextStyleBuilder.ui.semiBold
            .size(10)
            .color(style == WidgetStyle.filled
                ? context.theme.color.textPrimaryOnColor
                : color)
            .build(context),
        WidgetSize.md => AppTextStyleBuilder.ui.semiBold
            .size(14)
            .color(style == WidgetStyle.filled
                ? context.theme.color.textPrimaryOnColor
                : color)
            .build(context),
        WidgetSize.lg => AppTextStyleBuilder.ui.semiBold
            .size(18)
            .color(style == WidgetStyle.filled
                ? context.theme.color.textPrimaryOnColor
                : color)
            .build(context),
        WidgetSize.xl => AppTextStyleBuilder.ui.semiBold
            .size(24)
            .color(style == WidgetStyle.filled
                ? context.theme.color.textPrimaryOnColor
                : color)
            .build(context),
        WidgetSize.xxl => AppTextStyleBuilder.ui.semiBold
            .size(36)
            .color(style == WidgetStyle.filled
                ? context.theme.color.textPrimaryOnColor
                : color)
            .build(context),
      };

  String _getCharacter({
    required WidgetSize size,
    required String title,
  }) {
    List<String> names = title.split(' ');
    String initials = '';

    if (names.isNotEmpty) {
      initials += names[0][0];

      if (names.length > 1) {
        initials += names[names.length - 1][0];
      }
    }

    switch (size) {
      case WidgetSize.xxs:
        return initials.isNotEmpty ? initials[0] : '';
      case WidgetSize.xs:
        return initials.isNotEmpty ? initials[0] : '';
      case WidgetSize.sm:
        return initials;
      case WidgetSize.md:
        return initials;
      case WidgetSize.lg:
        return initials;
      case WidgetSize.xl:
        return initials;
      case WidgetSize.xxl:
        return initials;
    }
  }
}
