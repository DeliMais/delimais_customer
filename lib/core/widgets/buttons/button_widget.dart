import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/touchable_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget with ThemeMixin {
  const ButtonWidget({
    required this.icon,
    required this.text,
    required this.onPressed,
    this.direction = TextDirection.ltr,
    this.bgColor,
    this.fgColor,
    super.key,
  });

  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final TextDirection direction;
  final Color? bgColor;
  final Color? fgColor;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    final backgroundColor = bgColor ?? colors.primary;
    final foregroundColor = fgColor ?? colors.onPrimary;

    return TouchableWidget(
      onPressed: onPressed,
      child: ContainerWidget(
        width: metrics.button.width,
        height: metrics.button.height,
        padding: EdgeInsets.symmetric(
          vertical: metrics.small,
          horizontal: metrics.medium,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(metrics.radius),
        ),
        child: Row(
          textDirection: direction,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconWidget(icon: icon, color: foregroundColor),
            const SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            TextWidget(
              text,
              color: foregroundColor,
              style: TextWidgetStyle.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
