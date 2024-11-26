import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/theme/theme_metrics.dart';
import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget with ThemeMixin {
  const SpacerWidget({
    this.direction = Axis.horizontal,
    this.spacing = WidgetSpacing.medium,
    this.value,
    super.key,
  });

  final Axis direction;
  final WidgetSpacing spacing;
  final double? value;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);
    final space = value ?? getWidgetSpacing(spacing, metrics);

    return SizedBox(
      width: direction == Axis.horizontal ? space : null,
      height: direction == Axis.vertical ? space : null,
    );
  }
}

enum WidgetSpacing { small, medium, large }

double getWidgetSpacing(WidgetSpacing spacing, ThemeMetrics metrics) {
  switch (spacing) {
    case WidgetSpacing.small:
      return metrics.small;
    case WidgetSpacing.medium:
      return metrics.medium;
    case WidgetSpacing.large:
      return metrics.large;
  }
}
