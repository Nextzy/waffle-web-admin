import 'package:design_system/lib.dart';

class AppGridView extends AppStatelessWidget {
  const AppGridView.builder({
    super.key,
    required this.gridDelegate,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.shrinkWrap = false,
    this.padding,
    required this.itemCount,
    required this.itemBuilder,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
  });

  final SliverGridDelegate gridDelegate;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  final bool? primary;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final NullableIndexedWidgetBuilder itemBuilder;
  final ChildIndexGetter? findChildIndexCallback;
  final int? itemCount;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double? cacheExtent;
  final int? semanticChildCount;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) => NotificationListener<OverscrollIndicatorNotification>(
      onNotification: _onNotification,
      child: GridView.builder(
        gridDelegate: gridDelegate,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemBuilder: itemBuilder,
        findChildIndexCallback: findChildIndexCallback,
        itemCount: itemCount,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
      ),
    );

  bool _onNotification(notification) {
    // Consumes the overscroll notification and disables the glow effect
    notification.disallowIndicator();

    return true;
  }
}
