import 'package:delimais_customer/core/theme/theme_colors.dart';
import 'package:delimais_customer/core/theme/theme_metrics.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme({required this.isDark});

  final bool isDark;

  ThemeData get data {
    var brightness = Brightness.light;
    const metrics = ThemeMetricsImpl();
    ThemeColors colors = const ThemeLightColors();
    var data = ThemeData.light(useMaterial3: true);

    if (isDark) {
      brightness = Brightness.dark;
      colors = const ThemeDarkColors();
      data = ThemeData.dark(useMaterial3: true);
    }

    data = data.copyWith(
      brightness: brightness,
      extensions: [colors, metrics],
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: colors.primary,
        primary: colors.primary,
        onPrimary: colors.onPrimary,
        secondary: colors.secondary,
        onSecondary: colors.onSecondary,
        tertiary: colors.secondary,
        onTertiary: colors.onSecondary,
        error: colors.danger,
        onError: colors.danger,
        surface: colors.surface,
        onSurface: colors.onSurface,
        outline: colors.border,
        shadow: colors.shadow,
      ),
      cardColor: colors.surface,
      shadowColor: colors.shadow,
      dividerColor: colors.border,
      primaryColor: colors.primary,
      indicatorColor: colors.primary,
      scaffoldBackgroundColor: colors.background,
      iconTheme: IconThemeData(
        size: metrics.icon,
        color: colors.onBackground,
      ),
    );

    return data.copyWith(
      textTheme: GoogleFonts.interTextTheme(data.textTheme).copyWith(
        bodySmall: TextStyle(fontSize: 12, color: colors.onBackground),
        bodyMedium: TextStyle(fontSize: 14, color: colors.onBackground),
        bodyLarge: TextStyle(fontSize: 16, color: colors.onBackground),
        titleSmall: TextStyle(
          fontSize: 12,
          color: colors.onBackground,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          fontSize: 14,
          color: colors.onBackground,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontSize: 16,
          color: colors.onBackground,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 18,
          color: colors.onBackground,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          color: colors.onBackground,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          fontSize: 22,
          color: colors.onBackground,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
