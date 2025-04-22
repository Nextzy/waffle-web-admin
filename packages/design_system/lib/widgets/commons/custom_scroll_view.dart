import 'package:design_system/lib.dart';

class AppCustomScrollView extends AppStatelessWidget {
  const AppCustomScrollView({
    super.key,
    this.padding,
    this.controller,
    this.reverse = false,
    this.scrollDirection = Axis.vertical,
    this.scrollBehavior = const NoGlowScrollBehavior(),
    this.physics = const ClampingScrollPhysics(),
    this.slivers,
    this.children,
  }) : assert(slivers != null || children != null,
            'You need to use slivers or children');

  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final bool reverse;
  final ScrollBehavior? scrollBehavior;
  final ScrollPhysics? physics;
  final List<Widget>? slivers;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: _onNotification,
      child: CustomScrollView(
        physics: physics,
        scrollDirection: scrollDirection,
        controller: controller,
        reverse: reverse,
        scrollBehavior: scrollBehavior,
        slivers: slivers ??
            [
              SliverList(
                delegate: SliverChildListDelegate(children!),
              ),
            ],
      ),
    );
  }

  bool _onNotification(OverscrollIndicatorNotification? notification) {
    // Consumes the overscroll notification and disables the glow effect
    notification?.disallowIndicator();
    return true;
  }
}
