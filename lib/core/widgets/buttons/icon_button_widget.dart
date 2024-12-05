import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/touchable_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({
    required this.icon,
    required this.onPressed,
    this.isFilled = false,
    this.text,
    this.bgColor,
    this.fgColor,
    this.iconSize,
    this.padding,
    this.borderRadius,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final bool isFilled;
  final String? text;
  final Color? bgColor;
  final Color? fgColor;
  final double? iconSize;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;

  @override
  State<StatefulWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> with ThemeMixin {
  bool _isHovered = false;

  void _onHover({required bool isHovered}) {
    setState(() => _isHovered = isHovered);
  }

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    var fgColor = widget.fgColor ?? colors.primary;
    var bgColor = widget.bgColor ?? Colors.transparent;
    if (_isHovered) fgColor = fgColor.withOpacity(0.8);

    if (widget.isFilled) {
      bgColor = widget.bgColor ?? colors.primary;
      fgColor = widget.fgColor ?? colors.onPrimary;

      if (_isHovered) {
        bgColor = bgColor.withOpacity(0.8);
        fgColor = fgColor.withOpacity(0.8);
      }
    }

    final borderRadius =
        widget.borderRadius ?? BorderRadius.all(metrics.radius / 1.2);

    final child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconWidget(
          color: fgColor,
          icon: widget.icon,
          size: widget.iconSize,
        ),
        if (widget.text != null)
          const SpacerWidget(
            direction: Axis.horizontal,
            spacing: WidgetSpacing.small,
          ),
        if (widget.text != null)
          TextWidget(
            widget.text,
            color: fgColor,
            style: TextWidgetStyle.titleMedium,
          ),
      ],
    );

    return TouchableWidget(
      onHover: _onHover,
      onPressed: widget.onPressed,
      child: Visibility(
        visible: widget.isFilled,
        replacement: child,
        child: ContainerWidget(
          padding: widget.padding ?? EdgeInsets.all(metrics.small),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: borderRadius,
          ),
          child: child,
        ),
      ),
    );
  }
}
