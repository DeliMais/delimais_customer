import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeMetricsImpl extends ThemeMetrics {
  const ThemeMetricsImpl({
    super.small = 8,
    super.medium = 16,
    super.large = 32,
    super.icon = 21,
    super.field = const Size.fromHeight(48),
    super.button = const Size.fromHeight(48),
    super.navBar = Size.zero,
    super.appBar = const Size.fromHeight(68),
    super.blur = Offset.zero,
    super.radius = const Radius.circular(16),
    super.shadow = const BoxShadow(),
    super.border = const BorderSide(),
    super.curve = Curves.easeInOut,
    super.duration = const Duration(milliseconds: 200),
  });
}

class ThemeMetrics extends ThemeExtension<ThemeMetrics> {
  const ThemeMetrics({
    required this.small,
    required this.medium,
    required this.large,
    required this.icon,
    required this.field,
    required this.button,
    required this.navBar,
    required this.appBar,
    required this.blur,
    required this.radius,
    required this.shadow,
    required this.border,
    required this.curve,
    required this.duration,
  });

  final double small;
  final double medium;
  final double large;
  final double icon;
  final Size field;
  final Size button;
  final Size navBar;
  final Size appBar;
  final Offset blur;
  final Radius radius;
  final BoxShadow shadow;
  final BorderSide border;
  final Curve curve;
  final Duration duration;

  @override
  ThemeExtension<ThemeMetrics> copyWith({
    double? small,
    double? medium,
    double? large,
    double? icon,
    Size? field,
    Size? button,
    Size? navBar,
    Size? appBar,
    Offset? blur,
    Radius? radius,
    BoxShadow? shadow,
    BorderSide? border,
    Curve? curve,
    Duration? duration,
  }) {
    return ThemeMetrics(
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      icon: icon ?? this.icon,
      field: field ?? this.field,
      button: button ?? this.button,
      navBar: navBar ?? this.navBar,
      appBar: appBar ?? this.appBar,
      blur: blur ?? this.blur,
      radius: radius ?? this.radius,
      shadow: shadow ?? this.shadow,
      border: border ?? this.border,
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
    );
  }

  @override
  ThemeExtension<ThemeMetrics> lerp(
    covariant ThemeExtension<ThemeMetrics>? other,
    double t,
  ) {
    if (other is! ThemeMetrics) return this;

    return ThemeMetrics(
      small: lerpDouble(small, other.small, t)!,
      medium: lerpDouble(medium, other.medium, t)!,
      large: lerpDouble(large, other.large, t)!,
      icon: lerpDouble(icon, other.icon, t)!,
      field: Size.lerp(field, other.field, t)!,
      button: Size.lerp(button, other.button, t)!,
      navBar: Size.lerp(navBar, other.navBar, t)!,
      appBar: Size.lerp(appBar, other.appBar, t)!,
      blur: Offset.lerp(blur, other.blur, t)!,
      radius: Radius.lerp(radius, other.radius, t)!,
      shadow: BoxShadow.lerp(shadow, other.shadow, t)!,
      border: BorderSide.lerp(border, other.border, t),
      curve: other.curve,
      duration: lerpDuration(duration, other.duration, t),
    );
  }
}
