import 'package:flutter/material.dart';

class TouchableWidget extends StatelessWidget {
  const TouchableWidget({
    required this.onHover,
    required this.onPressed,
    required this.child,
    super.key,
  });

  final VoidCallback onPressed;
  final void Function({required bool isHovered}) onHover;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: MouseRegion(
        onEnter: (_) => onHover(isHovered: true),
        onExit: (_) => onHover(isHovered: false),
        child: child,
      ),
    );
  }
}
