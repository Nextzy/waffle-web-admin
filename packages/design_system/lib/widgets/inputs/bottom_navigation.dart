import 'package:design_system/lib.dart';

/// TODO:
/// ⏳ Implement onGesture to Avatar
/// ⏳ Implement click icon and change state
/// ⏳ Remove hardcode NavItem => pass param instead
/// ⏳ Pull profile data to avatar
// class AppBottomNavigation extends AppStatefulWidget {
//   const AppBottomNavigation({
//     super.key,
//     required this.selectIndex,
//     required this.onPress,
//     this.onLongPress,
//     // this.avatar,
//   });
//
//   final int selectIndex;
//   final ValueChanged<int> onPress;
//   final ValueChanged<int>? onLongPress;
//   // final AvatarModel? avatar;
//
//   @override
//   State<AppBottomNavigation> createState() => _AppBottomNavigationState();
// }
//
// class _AppBottomNavigationState extends AppState<AppBottomNavigation> {
//
//   @override
//   Widget build(BuildContext context) {
//     return FrameLayout(
//       backgroundColor: theme.color.bgSurface1,
//       child: SafeArea(
//         child: FrameLayout(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//           child: RowLayout(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             gap: 64,
//             children: [
//               buildNavItem(Assets.icon.creditCard02, 0),
//               // buildNavItem(AppAssets.iconList, 1),
//               // buildNavItem(AppAssets.iconUser01, 2),
//               // buildNavAvatarItem(1),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildNavItem(String icon, int index) {
//     final backgroundColor = widget.selectIndex == index
//         ? theme.color.brandPrimary.withOpacity(0.04)
//         : null;
//     final iconColor = widget.selectIndex == index
//         ? theme.color.textPrimary
//         : theme.color.textSecondary;
//
//     return AppGhostGrayIconButton(
//       backgroundColor: backgroundColor,
//       icon: icon,
//       iconColor: iconColor,
//       onPressed: () {
//         widget.onPress(index);
//       },
//       onLongPress: (){
//         widget.onLongPress?.call(index);
//       },
//     );
//   }
//
//   // Widget buildNavAvatarItem(int index) {
//   //   return AppInkWell(
//   //     child: FrameLayout(
//   //       padding: const EdgeInsets.all(8),
//   //       child: AppFocusSpreadShadow(
//   //         spreadColor: theme.color.brandPrimary.withOpacity(0.1),
//   //         focused: widget.selectIndex == index,
//   //         childCorner: 100,
//   //         child: OldAppAvatar(
//   //           size: WidgetSize.xs,
//   //           data: widget.avatar,
//   //         ),
//   //       ),
//   //     ),
//   //     onTap: () {
//   //       widget.onPress(index);
//   //     },
//   //     onLongPress: (){
//   //       widget.onLongPress?.call(index);
//   //     },
//   //   );
//   // }
// }
