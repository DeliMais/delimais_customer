import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget with ThemeMixin {
  const WrapWidget({
    required this.children,
    this.direction = Axis.horizontal,
    this.spacing = WidgetSpacing.medium,
    this.alignment = WrapAlignment.start,
    super.key,
  });

  final List<Widget> children;
  final Axis direction;
  final WidgetSpacing spacing;
  final WrapAlignment alignment;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);
    final space = getWidgetSpacing(spacing, metrics);

    return Wrap(
      direction: direction,
      spacing: space,
      alignment: alignment,
      runAlignment: alignment,
      runSpacing: space,
      children: children,
    );
  }
}
