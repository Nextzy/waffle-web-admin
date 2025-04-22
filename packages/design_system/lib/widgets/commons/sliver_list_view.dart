import 'package:design_system/lib.dart';

class AppSliverListView extends AppStatelessWidget {
  const AppSliverListView.builder({
    super.key,
    this.width,
    this.height,
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

  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  final double? height;
  final double? width;
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
  Widget build(BuildContext context) {
    return ContainerLayout(
      height: height,
      width: width,
      padding: padding,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: _onNotification,
        child: CustomScrollView(
          scrollDirection: scrollDirection,
          primary: primary,
          reverse: reverse,
          shrinkWrap: shrinkWrap,
          controller: controller,
          physics: const ClampingScrollPhysics(),
          cacheExtent: cacheExtent,
          semanticChildCount: semanticChildCount,
          dragStartBehavior: dragStartBehavior,
          keyboardDismissBehavior: keyboardDismissBehavior,
          restorationId: restorationId,
          clipBehavior: clipBehavior,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => itemBuilder.call(context, index),
                childCount: itemCount,
                findChildIndexCallback: findChildIndexCallback,
                addAutomaticKeepAlives: addAutomaticKeepAlives,
                addRepaintBoundaries: addRepaintBoundaries,
                addSemanticIndexes: addSemanticIndexes,
              ),
            )
          ],
        ),
      ),
    );
  }

  bool _onNotification(notification) {
    // Consumes the overscroll notification and disables the glow effect
    notification.disallowIndicator();

    return true;
  }
}
