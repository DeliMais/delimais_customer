import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({
    required this.child,
    this.top = false,
    this.bottom = false,
    this.left = false,
    this.right = false,
    super.key,
  });

  final Widget child;
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: child,
    );
  }
}
