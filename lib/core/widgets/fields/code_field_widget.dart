import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';

class CodeFieldWidget extends StatelessWidget with ThemeMixin {
  const CodeFieldWidget({
    this.action = TextInputAction.next,
    this.onFieldSubmitted,
    super.key,
  });

  final TextInputAction action;
  final VoidCallback? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final theme = getThemeData(context);
    final textTheme = getTextTheme(context);
    final (colors, metrics) = getTheme(context);

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius),
      borderSide: metrics.border.copyWith(color: colors.border),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius),
      borderSide: metrics.border.copyWith(color: colors.primary),
    );

    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius),
      borderSide: metrics.border.copyWith(color: colors.danger),
    );

    return TextFormField(
      textInputAction: action,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: textTheme.bodyMedium,
      keyboardAppearance: theme.brightness,
      onFieldSubmitted: (_) => onFieldSubmitted?.call(),
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        fillColor: colors.surface,
        border: border,
        enabledBorder: border,
        disabledBorder: border,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: errorBorder,
        contentPadding: EdgeInsets.symmetric(
          horizontal: metrics.medium,
          vertical: metrics.large / 1.6,
        ),
      ),
    );
  }
}
