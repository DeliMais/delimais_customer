part of '../payment_page.dart';

class _PaymentMethodPickerWidget extends GetView<PaymentPageController>
    with ThemeMixin {
  const _PaymentMethodPickerWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, _) = getTheme(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          'Pagar agora',
          color: colors.onBackgroundAlt,
        ),
        const SpacerWidget(),
        Obx(
          () => OptionWidget(
            text: 'PIX',
            icon: SolarLinearIcons.pix,
            activeIcon: SolarBoldIcons.pix,
            isActive: controller.method == PaymentMethodEnum.pix,
            onPressed: () => controller.method = PaymentMethodEnum.pix,
          ),
        ),
        const SpacerWidget(spacing: WidgetSpacing.large),
        TextWidget(
          'Pagar na entrega',
          color: colors.onBackgroundAlt,
        ),
        const SpacerWidget(),
        Obx(
          () => OptionWidget(
            text: 'Cartão de crédito',
            icon: SolarLinearIcons.card,
            activeIcon: SolarBoldIcons.card,
            isActive: controller.method == PaymentMethodEnum.creditCard,
            onPressed: () => controller.method = PaymentMethodEnum.creditCard,
          ),
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        Obx(
          () => OptionWidget(
            text: 'Cartão de débito',
            icon: SolarLinearIcons.card,
            activeIcon: SolarBoldIcons.card,
            isActive: controller.method == PaymentMethodEnum.debitCard,
            onPressed: () => controller.method = PaymentMethodEnum.debitCard,
          ),
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        Obx(
          () => OptionWidget(
            text: 'Dinheiro',
            icon: SolarLinearIcons.walletMoney,
            activeIcon: SolarBoldIcons.walletMoney,
            isActive: controller.method == PaymentMethodEnum.cash,
            onPressed: () => controller.method = PaymentMethodEnum.cash,
          ),
        ),
      ],
    );
  }
}
