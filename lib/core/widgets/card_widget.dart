import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget with ThemeMixin {
  const CardWidget({
    required this.child,
    this.width,
    this.height,
    this.constraints,
    this.color,
    super.key,
  });

  final Widget child;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return ContainerWidget(
      width: width,
      height: height,
      constraints: constraints,
      padding: EdgeInsets.all(metrics.small),
      decoration: BoxDecoration(
        color: color ?? colors.surface,
        borderRadius: BorderRadius.all(metrics.radius),
      ),
      child: child,
    );
  }
}
