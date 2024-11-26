import 'package:flutter/material.dart';

class TouchableWidget extends StatelessWidget {
  const TouchableWidget({
    required this.onPressed,
    required this.child,
    this.onHover,
    super.key,
  });

  final VoidCallback onPressed;
  final void Function({required bool isHovered})? onHover;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: MouseRegion(
        onEnter: (_) => onHover?.call(isHovered: true),
        onExit: (_) => onHover?.call(isHovered: false),
        child: child,
      ),
    );
  }
}
