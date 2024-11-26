import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_scroll/text_scroll.dart';

class TextWidget extends StatelessWidget with ThemeMixin {
  const TextWidget(
    this.text, {
    this.color,
    this.autoScroll = false,
    this.style = TextWidgetStyle.bodyMedium,
    super.key,
  });

  final String? text;
  final Color? color;
  final bool autoScroll;
  final TextWidgetStyle style;

  @override
  Widget build(BuildContext context) {
    final textTheme = getTextTheme(context);
    final textStyle = _getTextStyle(textTheme).copyWith(color: color);

    final pauseDuration = Duration(seconds: (0.2 * 16).toInt());

    if (autoScroll) {
      return TextScroll(
        text ?? 'unknown'.tr,
        style: textStyle,
        mode: TextScrollMode.bouncing,
        pauseBetween: pauseDuration,
        pauseOnBounce: pauseDuration,
        velocity: const Velocity(pixelsPerSecond: Offset(16, 0)),
      );
    }

    return Text(
      text ?? 'unknown'.tr,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: textStyle,
    );
  }

  TextStyle _getTextStyle(TextTheme textTheme) {
    switch (style) {
      case TextWidgetStyle.bodySmall:
        return textTheme.bodySmall!;
      case TextWidgetStyle.bodyMedium:
        return textTheme.bodyMedium!;
      case TextWidgetStyle.bodyLarge:
        return textTheme.bodyLarge!;
      case TextWidgetStyle.titleSmall:
        return textTheme.titleSmall!;
      case TextWidgetStyle.titleMedium:
        return textTheme.titleMedium!;
      case TextWidgetStyle.titleLarge:
        return textTheme.titleLarge!;
      case TextWidgetStyle.headlineSmall:
        return textTheme.headlineSmall!;
      case TextWidgetStyle.headlineMedium:
        return textTheme.headlineMedium!;
      case TextWidgetStyle.headlineLarge:
        return textTheme.headlineLarge!;
    }
  }
}

enum TextWidgetStyle {
  bodySmall,
  bodyMedium,
  bodyLarge,
  titleSmall,
  titleMedium,
  titleLarge,
  headlineSmall,
  headlineMedium,
  headlineLarge,
}
