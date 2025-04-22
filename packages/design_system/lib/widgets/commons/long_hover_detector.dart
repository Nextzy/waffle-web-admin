import 'package:design_system/lib.dart';

class LongHoverDetector extends StatefulWidget {

  const LongHoverDetector({
    super.key,
    required this.child,
    this.hoverDuration = const Duration(seconds: 1),
    this.onLongHover,
    this.onHoverStart,
    this.onHoverEnd,
    this.showFeedback = true,
  });

  final Widget child;
  final Duration hoverDuration;
  final Function(PointerEvent event)? onLongHover;
  final Function(PointerEvent event)? onHoverStart;
  final Function(PointerEvent event)? onHoverEnd;
  final bool showFeedback;

  @override
  State<LongHoverDetector> createState() => _LongHoverDetectorState();
}

class _LongHoverDetectorState extends State<LongHoverDetector> {
  Timer? _hoverTimer;
  bool isHovering = false;
  bool hasTriggeredLongHover = false;

  @override
  void dispose() {
    _hoverTimer?.cancel();
    super.dispose();
  }

  void _handleHoverStart(PointerEvent event) {
    setState(() {
      isHovering = true;
      hasTriggeredLongHover = false;
    });

    widget.onHoverStart?.call(event);

    _hoverTimer = Timer(widget.hoverDuration, () {
      if (isHovering && !hasTriggeredLongHover) {
        setState(() => hasTriggeredLongHover = true);
        widget.onLongHover?.call(event);
      }
    });
  }

  void _handleHoverEnd(PointerEvent event) {
    setState(() {
      isHovering = false;
      hasTriggeredLongHover = false;
    });

    widget.onHoverEnd?.call(event);
    _hoverTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _handleHoverStart,
      onExit: _handleHoverEnd,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
      ),
    );
  }
}
