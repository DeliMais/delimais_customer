import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/touchable_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget with ThemeMixin {
  const TextButtonWidget({
    required this.text,
    required this.onPressed,
    this.color,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return TouchableWidget(
      onPressed: onPressed,
      child: TextWidget(
        text,
        color: color ?? colors.primary,
        style: TextWidgetStyle.titleMedium,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
