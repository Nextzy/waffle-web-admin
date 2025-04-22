import 'package:design_system/lib.dart';

// class AppDropdownIconButton<T> extends AppStatefulWidget {
//   const AppDropdownIconButton({
//     key,
//     this.size = WidgetSize.md,
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
//     required this.iconButton,
//     //============= DROPDOWN =============//
//     this.dropDownWidth = 240,
//     //============= CALLBACK METHOD =============//
//     this.onChanged,
//     this.onMenuStateChange,
//   }) : super(key: key);
//
//   final List<DropdownMenuItem<T>> items;
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
//   final AppIconButton? iconButton;
//
//   ///============= DROPDOWN =============///
//   final double dropDownWidth;
//
//   ///============= CALLBACK METHOD =============///
//   final ValueChanged? onChanged;
//   final OnMenuStateChangeFn? onMenuStateChange;
//
//   @override
//   State<AppDropdownIconButton> createState() => _AppDropdownIconButtonState();
// }
//
// class _AppDropdownIconButtonState extends AppState<AppDropdownIconButton> {
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
//               widget.onChanged?.call(value);
//             },
//             onMenuStateChange: (state) {
//               Log.i('State: $state');
//               widget.onMenuStateChange?.call(state);
//             },
//             customButton: widget.iconButton,
//             iconStyleData: const IconStyleData(iconSize: 0),
//             buttonStyleData: _createButtonStyle(
//               context,
//               size: widget.size,
//               baseOverlayColor: baseOverlayColor,
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
//   ButtonStyleData _createButtonStyle(
//     BuildContext context, {
//     required WidgetSize size,
//     required Color baseOverlayColor,
//   }) {
//     return ButtonStyleData(
//       decoration: BoxDecoration(
//         color: theme.color.bgSurface1,
//         borderRadius: BorderRadius.circular(theme.borderRadius.md.maxRadius),
//       ),
//       overlayColor:
//           _createOverlayStateStyle(context, baseOverlayColor: baseOverlayColor),
//     );
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
//           return baseOverlayColor.withOpacity(0.01);
//         }
//       },
//     );
//   }
// }
