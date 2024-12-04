part of '../../shop_page.dart';

class _ShopInfoPaymentWidget extends StatelessWidget {
  const _ShopInfoPaymentWidget();

  @override
  Widget build(BuildContext context) {
    return _ShopInfoItemWidget(
      icon: SolarLinearIcons.dollarMinimalistic,
      border: const Border.fromBorderSide(BorderSide.none),
      text: 'Dinheiro • Cartão de Crédito • Cartão de Débito',
      onPressed: () {},
    );
  }
}
