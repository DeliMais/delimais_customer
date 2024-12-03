import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget with ThemeMixin {
  const BadgeWidget({
    required this.text,
    this.bgColor,
    this.fgColor,
    super.key,
  });

  final String text;
  final Color? bgColor;
  final Color? fgColor;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return ContainerWidget(
      padding: EdgeInsets.symmetric(
        horizontal: metrics.small,
        vertical: metrics.small / 2,
      ),
      decoration: BoxDecoration(
        color: bgColor ?? colors.primary,
        borderRadius: BorderRadius.all(metrics.radius),
      ),
      child: TextWidget(
        text,
        style: TextWidgetStyle.titleSmall,
        color: fgColor ?? colors.onPrimary,
      ),
    );
  }
}
