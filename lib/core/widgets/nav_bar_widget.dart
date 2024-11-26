import 'dart:io';

import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/touchable_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/core/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';

class NavBarItem {
  const NavBarItem({
    required this.text,
    required this.icon,
    required this.activeIcon,
  });

  final String text;
  final IconData icon;
  final IconData activeIcon;
}

class NavBarWidget extends StatelessWidget with ThemeMixin {
  const NavBarWidget({
    required this.selected,
    required this.items,
    required this.onSelected,
    super.key,
  });

  final int selected;
  final List<NavBarItem> items;
  final void Function(int selected) onSelected;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    var padding = EdgeInsets.all(metrics.medium);
    if (Platform.isIOS) {
      padding = EdgeInsets.symmetric(horizontal: metrics.medium).copyWith(
        top: metrics.medium,
      );
    }

    return ContainerWidget(
      padding: padding,
      color: colors.background,
      child: SafeAreaWidget(
        bottom: true,
        showMinimum: false,
        child: WrapWidget(
          alignment: WrapAlignment.spaceEvenly,
          children: List.generate(
            items.length,
            (index) => _ItemWidget(
              item: items[index],
              isActive: index == selected,
              onPressed: () => onSelected.call(index),
            ),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget with ThemeMixin {
  const _ItemWidget({
    required this.item,
    required this.isActive,
    required this.onPressed,
  });

  final NavBarItem item;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    var icon = item.icon;
    var color = colors.onBackgroundAlt;
    if (isActive) {
      icon = item.activeIcon;
      color = colors.primary;
    }

    return TouchableWidget(
      onHover: ({required isHovered}) => {},
      onPressed: onPressed,
      child: Column(
        children: [
          IconWidget(
            icon: icon,
            color: color,
            size: metrics.icon * 1.2,
          ),
          SpacerWidget(
            value: metrics.small / 4,
            direction: Axis.vertical,
          ),
          TextWidget(
            item.text,
            color: color,
            style: TextWidgetStyle.bodySmall,
          ),
        ],
      ),
    );
  }
}
