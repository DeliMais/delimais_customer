part of '../../shop_page.dart';

class _ShopInfoDeliveryWidget extends GetView<ShopPageController>
    with DateTimeMixin, MonetaryMixin {
  const _ShopInfoDeliveryWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final shop = controller.shop!;
      final min = getDuration(shop.delivery.min);
      final max = getDuration(shop.delivery.max);
      final price = getPrice(shop.delivery.price);

      return _ShopInfoItemWidget(
        icon: SolarLinearIcons.scooter,
        text: '$min - $max • $price',
        onPressed: () {},
      );
    });
  }
}
