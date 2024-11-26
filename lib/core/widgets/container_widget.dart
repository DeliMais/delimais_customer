import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget with ThemeMixin {
  const ContainerWidget({
    this.width,
    this.height,
    this.padding,
    this.color,
    this.decoration,
    this.child,
    super.key,
  });

  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? color;
  final Decoration? decoration;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return AnimatedContainer(
      curve: metrics.curve,
      duration: metrics.duration,
      width: width,
      height: height,
      padding: padding,
      color: color,
      decoration: decoration,
      child: child,
    );
  }
}
