import 'package:delimais_customer/core/theme/theme_colors.dart';
import 'package:delimais_customer/core/theme/theme_metrics.dart';
import 'package:flutter/material.dart';

mixin ThemeMixin {
  ThemeData getThemeData(BuildContext context) {
    final theme = Theme.of(context);
    return theme;
  }

  TextTheme getTextTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme;
  }

  (ThemeColors, ThemeMetrics) getTheme(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<ThemeColors>()!;
    final metrics = theme.extension<ThemeMetrics>()!;

    return (colors, metrics);
  }
}
