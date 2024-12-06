part of '../../shop_page.dart';

class _ShopInfoPaymentWidget extends GetView<ShopPageController> {
  const _ShopInfoPaymentWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final payments = controller.shop!.methods.map((method) => method.value);

      return _ShopInfoItemWidget(
        icon: SolarLinearIcons.dollarMinimalistic,
        border: const Border.fromBorderSide(BorderSide.none),
        text: payments.join(' • '),
        onPressed: () {},
      );
    });
  }
}
