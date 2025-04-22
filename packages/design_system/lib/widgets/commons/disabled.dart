import 'package:flutter/material.dart';

class Disabled extends StatelessWidget {
  const Disabled({
    super.key,
    this.disabled = false,
    this.disabledOpacity = 0.5,
    required this.child,
  });

  final bool disabled;
  final double disabledOpacity;
  final Widget child;

  @override
  Widget build(BuildContext context) => buildOpacity(
        disabled: disabled,
        opacity: disabledOpacity,
        child: IgnorePointer(
          ignoring: disabled,
          child: Focus(
            descendantsAreFocusable: !disabled,
            canRequestFocus: !disabled,
            child: child,
          ),
        ),
      );

  Widget buildOpacity({
    required bool disabled,
    required double opacity,
    required Widget child,
  }) =>
      disabled && opacity < 1.0
          ? Opacity(
              opacity: opacity,
              child: child,
            )
          : child;
}
