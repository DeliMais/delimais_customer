import 'package:flutter/material.dart';

class ThemeLightColors extends ThemeColors {
  const ThemeLightColors({
    super.primary = const Color(0xFFBA4E14),
    super.onPrimary = const Color(0xFFFFF8F4),
    super.secondary = Colors.white,
    super.onSecondary = Colors.white,
    super.danger = const Color(0xFFB40000),
    super.onDanger = Colors.white,
    super.surface = const Color(0xFFFFFFFF),
    super.onSurface = const Color(0xFF181818),
    super.border = const Color.fromRGBO(24, 24, 24, 0.1),
    super.shadow = const Color.fromRGBO(24, 24, 24, 0.2),
    super.background = const Color(0xFFF2F2F2),
    super.onBackground = const Color(0xFF181818),
    super.onBackgroundAlt = const Color.fromRGBO(24, 24, 24, 0.6),
  });
}

class ThemeDarkColors extends ThemeColors {
  const ThemeDarkColors({
    super.primary = const Color(0xFFE68A00),
    super.onPrimary = Colors.black,
    super.secondary = Colors.black,
    super.onSecondary = Colors.black,
    super.danger = Colors.black,
    super.onDanger = Colors.black,
    super.surface = Colors.black,
    super.onSurface = Colors.black,
    super.border = Colors.black,
    super.shadow = Colors.black,
    super.background = Colors.black,
    super.onBackground = Colors.black,
    super.onBackgroundAlt = Colors.black,
  });
}

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.danger,
    required this.onDanger,
    required this.surface,
    required this.onSurface,
    required this.border,
    required this.shadow,
    required this.background,
    required this.onBackground,
    required this.onBackgroundAlt,
  });

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color danger;
  final Color onDanger;
  final Color surface;
  final Color onSurface;
  final Color border;
  final Color shadow;
  final Color background;
  final Color onBackground;
  final Color onBackgroundAlt;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? danger,
    Color? onDanger,
    Color? surface,
    Color? onSurface,
    Color? border,
    Color? shadow,
    Color? background,
    Color? onBackground,
    Color? onBackgroundAlt,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      danger: danger ?? this.danger,
      onDanger: onDanger ?? this.onDanger,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      border: border ?? this.border,
      shadow: shadow ?? this.shadow,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      onBackgroundAlt: onBackgroundAlt ?? this.onBackgroundAlt,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) return this;

    return ThemeColors(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      border: Color.lerp(border, other.border, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onBackgroundAlt: Color.lerp(onBackgroundAlt, other.onBackgroundAlt, t)!,
    );
  }
}
