import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget with ThemeMixin {
  const SafeAreaWidget({
    required this.child,
    this.top = false,
    this.bottom = false,
    this.left = false,
    this.right = false,
    this.showMinimum = true,
    super.key,
  });

  final Widget child;
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;
  final bool showMinimum;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);
    final safeArea = MediaQuery.of(context).padding;

    var padding = EdgeInsets.zero;
    if (showMinimum) {
      padding = padding.copyWith(
        top: top && safeArea.top == 0 ? metrics.medium : null,
        bottom: bottom && safeArea.bottom == 0 ? metrics.medium : null,
        left: left && safeArea.left == 0 ? metrics.medium : null,
        right: right && safeArea.right == 0 ? metrics.medium : null,
      );
    }

    return SafeArea(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      minimum: padding,
      child: child,
    );
  }
}
