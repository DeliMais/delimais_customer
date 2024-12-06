part of '../checkout_page.dart';

class _DeliveryPickerWidget extends GetView<CheckoutPageController>
    with ThemeMixin, DateTimeMixin {
  const _DeliveryPickerWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          'Tipo da entrega',
          color: colors.onBackgroundAlt,
        ),
        const SpacerWidget(),
        Obx(() {
          final min = getDuration(controller.shop!.delivery.min);
          final max = getDuration(controller.shop!.delivery.max);

          return OptionWidget(
            text: OrderTypeEnum.delivery.value,
            icon: SolarLinearIcons.scooter,
            activeIcon: SolarBoldIcons.scooter,
            isActive: controller.orderType == OrderTypeEnum.delivery,
            trailingText: '$min - $max',
            onPressed: () => controller.orderType = OrderTypeEnum.delivery,
          );
        }),
        const SpacerWidget(spacing: WidgetSpacing.small),
        Obx(() {
          final min = getDuration(controller.shop!.pickup.min);
          final max = getDuration(controller.shop!.pickup.max);

          return OptionWidget(
            text: OrderTypeEnum.pickup.value,
            icon: SolarLinearIcons.shop,
            activeIcon: SolarBoldIcons.shop,
            trailingText: '$min - $max',
            isActive: controller.orderType == OrderTypeEnum.pickup,
            onPressed: () => controller.orderType = OrderTypeEnum.pickup,
          );
        }),
      ],
    );
  }
}
