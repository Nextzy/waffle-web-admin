import 'package:design_system/lib.dart';

part 'generated/avatar_theme.freezed.dart';

@freezed
abstract class AppAvatarTheme with _$AppAvatarTheme {
  const factory AppAvatarTheme({
    @Default(WidgetStyle.subtle) WidgetStyle style,
    double? customSize,
    String? title,
    String? path,
    Color? color,
    Border? border,
    BorderRadius? borderRadius,
    Gradient? backgroundGradient,
    DecorationImage? backgroundImage,
    @Default(false) bool disabled,
    StatusRing? statusRing,
    Badge? badge,
    StatusDot? statusDot,
    GestureTapCallback? onPressed,
    GestureLongPressCallback? onLongPress,
  }) = _AppAvatarTheme;
}
