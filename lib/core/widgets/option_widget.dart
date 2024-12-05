import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget with ThemeMixin {
  const OptionWidget({
    required this.text,
    required this.icon,
    required this.activeIcon,
    this.isActive = false,
    this.trailingText,
    super.key,
  });

  final String text;
  final IconData icon;
  final IconData activeIcon;
  final bool isActive;
  final String? trailingText;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    var newIcon = icon;
    var bgColor = colors.surface;
    var fgColor = colors.onSurface;
    var trailingColor = colors.onBackgroundAlt;
    var textStyle = TextWidgetStyle.bodyMedium;
    if (isActive) {
      newIcon = activeIcon;
      bgColor = colors.primary;
      fgColor = colors.onPrimary;
      trailingColor = colors.onPrimary;
      textStyle = TextWidgetStyle.titleMedium;
    }

    return ContainerWidget(
      width: metrics.button.width,
      height: metrics.button.height,
      padding: EdgeInsets.all(metrics.small).copyWith(
        right: metrics.medium / 1.4,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(metrics.radius),
      ),
      child: Row(
        children: [
          IconWidget(icon: newIcon, color: fgColor),
          const SpacerWidget(
            direction: Axis.horizontal,
            spacing: WidgetSpacing.small,
          ),
          TextWidget(
            text,
            color: fgColor,
            style: textStyle,
          ),
          const Spacer(),
          if (trailingText != null)
            TextWidget(
              trailingText,
              style: textStyle,
              color: trailingColor,
            ),
          const SpacerWidget(direction: Axis.horizontal),
          _DotWidget(isActive: isActive),
        ],
      ),
    );
  }
}

class _DotWidget extends StatelessWidget with ThemeMixin {
  const _DotWidget({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    var bgColor = colors.border;
    var fgColor = colors.border;
    if (isActive) {
      bgColor = colors.primary;
      fgColor = colors.onPrimary;
    }

    return ContainerWidget(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
        border: Border.all(
          width: 4,
          color: fgColor,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
    );
  }
}
