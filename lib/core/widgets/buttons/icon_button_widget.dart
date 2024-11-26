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
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final bool isFilled;

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

    var fgColor = colors.primary;
    var bgColor = Colors.transparent;
    if (_isHovered) {
      fgColor = colors.primary.withOpacity(0.8);
    }

    if (widget.isFilled) {
      bgColor = colors.primary;
      fgColor = colors.onPrimary;

      if (_isHovered) {
        bgColor = colors.primary.withOpacity(0.8);
        fgColor = colors.onPrimary.withOpacity(0.8);
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
