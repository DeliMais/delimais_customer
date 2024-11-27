import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/touchable_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({
    required this.icon,
    required this.onPressed,
    this.isFilled = false,
    this.bgColor,
    this.fgColor,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final bool isFilled;
  final Color? bgColor;
  final Color? fgColor;

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

    final child = IconWidget(color: fgColor, icon: widget.icon);

    return TouchableWidget(
      onHover: _onHover,
      onPressed: widget.onPressed,
      child: Visibility(
        visible: widget.isFilled,
        replacement: child,
        child: ContainerWidget(
          padding: EdgeInsets.all(metrics.small),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(metrics.radius / 1.2),
          ),
          child: child,
        ),
      ),
    );
  }
}
