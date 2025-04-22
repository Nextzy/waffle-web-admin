import 'package:design_system/lib.dart';

// enum AppDropdownType {
//   button,
//   icon,
// }
//
// //TODO: Need implement
// class AppDropdownButton<T> extends AppStatefulWidget {
//   const AppDropdownButton({
//     key,
//     this.size = WidgetSize.md,
//     required this.text,
//     required this.items,
//     this.stroke,
//     this.strokeColor,
//     this.cornerRadius,
//     this.overlayColor,
//     this.focusColor,
//     this.focusNode,
//     this.autofocus = false,
//     this.destructive = false,
//     this.expanded = false,
//     this.enabled = true,
//     //============= BUTTON =============//
//     this.buttonBackgroundColor,
//     this.buttonStartIcon,
//     this.buttonEndIcon,
//     this.buttonPadding,
//     this.buttonTextColor,
//     this.buttonIconColor,
//     this.buttonWidth,
//     //============= DROPDOWN =============//
//     this.dropDownWidth = 240,
//     //============= CALLBACK METHOD =============//
//     this.onPressed,
//     this.onLongPress,
//     this.onHover,
//     this.onFocusChange,
//   }) : super(key: key);
//
//   final List<DropdownMenuItem<T>> items;
//   final String? text;
//   @override
//   final WidgetSize size;
//   final double? stroke;
//   final Color? strokeColor;
//   final Color? overlayColor;
//   final Color? focusColor;
//   final FocusNode? focusNode;
//   final bool autofocus;
//   final double? cornerRadius;
//   final bool expanded;
//   final bool destructive;
//   final bool enabled;
//
//   ///============= BUTTON =============///
//   final Color? buttonBackgroundColor;
//   final String? buttonStartIcon;
//   final String? buttonEndIcon;
//   final EdgeInsetsGeometry? buttonPadding;
//   final Color? buttonTextColor;
//   final Color? buttonIconColor;
//   final double? buttonWidth;
//
//   ///============= DROPDOWN =============///
//   final double dropDownWidth;
//
//   ///============= CALLBACK METHOD =============///
//   final VoidCallback? onPressed;
//   final VoidCallback? onLongPress;
//   final ValueChanged<bool>? onHover;
//   final ValueChanged<bool>? onFocusChange;
//
//   @override
//   State<AppDropdownButton> createState() => _AppDropdownButtonState();
// }
//
// class _AppDropdownButtonState extends AppState<AppDropdownButton> {
//   bool focused = false;
//
//   final AppButtonDelegate _delegate = AppButtonDelegate();
//
//   @override
//   Widget build(BuildContext context) {
//     final focusColor =
//         widget.focusColor ?? widget.overlayColor?.withOpacity(0.1);
//
//     const baseOverlayColor = Colors.black;
//
//     return FocusSpread(
//       childCorner: widget.cornerRadius ?? theme.borderRadius.md.maxRadius,
//       focus: focused,
//       color: focusColor,
//       child: Opacity(
//         opacity: widget.enabled ? 1.0 : 0.5,
//         child: DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             enableFeedback: true,
//             onChanged: (value) {
//               Log.i('Value: $value');
//             },
//             onMenuStateChange: (state) {
//               Log.i(state);
//             },
//             hint: _createHint(
//               size: widget.size,
//               startIcon: widget.buttonStartIcon,
//               text: widget.text,
//               endIcon: widget.buttonEndIcon,
//             ),
//             // customButton: _createButton(),
//             buttonStyleData: _createButtonStyle(
//               context,
//               width: widget.buttonWidth,
//               size: widget.size,
//               baseOverlayColor: baseOverlayColor,
//               defaultPadding: widget.buttonPadding,
//             ),
//             iconStyleData: _createIconStyle(
//               size: widget.size,
//               iconColor: widget.buttonIconColor,
//             ),
//             dropdownStyleData:
//                 _createDropdownStyle(width: widget.dropDownWidth),
//             menuItemStyleData: _createMenuItemStyle(
//               context,
//               baseOverlayColor: baseOverlayColor,
//             ),
//             items: widget.items,
//           ),
//         ),
//       ),
//     );
//   }
//
//   ///========================= PRIVATE METHOD =========================///
//   Widget _createHint({
//     required WidgetSize size,
//     String? startIcon,
//     required String? text,
//     String? endIcon,
//   }) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: _delegate.getHorizontalPadding(size)),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: widget.expanded ? MainAxisSize.max : MainAxisSize.min,
//         children: [
//           if (startIcon != null)
//             startIcon.toSvgIcon(
//               color: widget.buttonIconColor ?? theme.color.textSecondary,
//               size: _delegate.getIconSize(widget.size),
//             ),
//           if (startIcon != null) Space.gap8,
//           AppText(
//             text ?? '',
//             style: _delegate.getTextStyle(
//               context,
//               size: widget.size,
//               textColor: theme.color.textPrimary,
//             ),
//           ),
//           if (endIcon != null) Space.gap8,
//           if (endIcon != null)
//             endIcon.toSvgIcon(
//               color: widget.buttonIconColor ?? theme.color.textSecondary,
//               size: _delegate.getIconSize(widget.size),
//             ),
//         ],
//       ),
//     );
//   }
//
//   IconStyleData _createIconStyle({
//     required WidgetSize size,
//     required Color? iconColor,
//   }) {
//     final iconSize = _delegate.getIconSize(size);
//
//     return IconStyleData(
//       icon: Padding(
//         padding: EdgeInsets.only(right: _delegate.getHorizontalPadding(size)),
//         child: Assets.icon.chevronDown.svgIcon(
//           size: iconSize,
//           color: widget.buttonIconColor ?? theme.color.textSecondary,
//         ),
//       ),
//       iconSize: iconSize,
//     );
//   }
//
//   ButtonStyleData _createButtonStyle(
//     BuildContext context, {
//     required WidgetSize size,
//     required double? width,
//     required Color baseOverlayColor,
//     required EdgeInsetsGeometry? defaultPadding,
//   }) {
//     return ButtonStyleData(
//         width: width,
//         height: _delegate.calculateHeight(context,
//             size: size, defaultPadding: defaultPadding),
//         padding: const EdgeInsets.all(0.0),
//         decoration: BoxDecoration(
//           color: theme.color.bgSurface1,
//           border: Border.fromBorderSide(BorderSide(
//               strokeAlign: BorderSide.strokeAlignInside,
//               color: theme.color.border,
//               width: theme.border.md.maxWidth)),
//           borderRadius: BorderRadius.circular(theme.borderRadius.md.maxRadius),
//         ),
//         overlayColor: _createOverlayStateStyle(context,
//             baseOverlayColor: baseOverlayColor));
//   }
//
//   DropdownStyleData _createDropdownStyle({
//     double? width,
//   }) {
//     return DropdownStyleData(
//         offset: const Offset(0, -4),
//         useSafeArea: true,
//         width: width,
//         decoration: BoxDecoration(
//           color: theme.color.bgSurface1,
//           border: Border.fromBorderSide(BorderSide(
//               strokeAlign: BorderSide.strokeAlignInside,
//               color: theme.color.border,
//               width: theme.border.md.maxWidth)),
//           borderRadius: BorderRadius.circular(theme.borderRadius.md.maxRadius),
//           boxShadow: theme.shadow.lg,
//         ));
//   }
//
//   MenuItemStyleData _createMenuItemStyle(
//     BuildContext context, {
//     required Color baseOverlayColor,
//   }) {
//     return MenuItemStyleData(
//       padding: const EdgeInsets.all(0.0),
//       overlayColor:
//           _createOverlayStateStyle(context, baseOverlayColor: baseOverlayColor),
//     );
//   }
//
//   MaterialStateProperty<Color?> _createOverlayStateStyle(
//     BuildContext context, {
//     required Color baseOverlayColor,
//   }) {
//     return MaterialStateProperty.resolveWith<Color?>(
//       (states) {
//         if (states.contains(MaterialState.hovered)) {
//           return baseOverlayColor.withOpacity(0.01);
//         } else if (states.contains(MaterialState.focused)) {
//           return null;
//         } else if (states.contains(MaterialState.pressed)) {
//           return baseOverlayColor.withOpacity(0.02);
//         } else {
//           return null;
//         }
//       },
//     );
//   }
// }
