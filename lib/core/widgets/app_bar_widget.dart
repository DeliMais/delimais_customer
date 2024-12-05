import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/core/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class AppBarWidget extends StatelessWidget with ThemeMixin {
  const AppBarWidget({
    this.title,
    this.leading,
    this.actions = const [],
    this.isBackVisible = false,
    super.key,
  });

  final String? title;
  final Widget? leading;
  final List<IconButtonWidget> actions;
  final bool isBackVisible;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return ContainerWidget(
      color: colors.background,
      padding: EdgeInsets.all(metrics.medium).copyWith(
        bottom: metrics.small,
      ),
      child: SafeAreaWidget(
        top: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: _LeadingWidget(
                title: title,
                leading: leading,
                isBackVisible: isBackVisible,
              ),
            ),
            WrapWidget(
              alignment: WrapAlignment.end,
              children: actions,
            ),
          ],
        ),
      ),
    );
  }
}

class _LeadingWidget extends StatelessWidget with ThemeMixin {
  const _LeadingWidget({
    required this.title,
    required this.leading,
    required this.isBackVisible,
  });

  final String? title;
  final Widget? leading;
  final bool isBackVisible;
  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Row(
      children: [
        if (isBackVisible)
          IconButtonWidget(
            iconSize: metrics.icon * 1.4,
            icon: SolarLinearIcons.altArrowLeft,
            onPressed: () => Get.back<void>(),
          ),
        if (isBackVisible)
          const SpacerWidget(
            direction: Axis.horizontal,
            spacing: WidgetSpacing.small,
          ),
        if (title != null)
          TextWidget(
            title,
            style: TextWidgetStyle.headlineMedium,
          ),
        if (leading != null) Flexible(child: leading!),
      ],
    );
  }
}
