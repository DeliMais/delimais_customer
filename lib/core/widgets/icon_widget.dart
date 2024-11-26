import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget with ThemeMixin {
  const IconWidget({
    required this.icon,
    this.color,
    this.size,
    super.key,
  });

  final IconData icon;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Icon(
      icon,
      size: size ?? metrics.icon,
      color: color ?? colors.onBackground,
    );
  }
}
