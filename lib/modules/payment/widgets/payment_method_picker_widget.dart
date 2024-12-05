part of '../payment_page.dart';

class _PaymentMethodPickerWidget extends StatelessWidget with ThemeMixin {
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
        const OptionWidget(
          text: 'PIX',
          isActive: true,
          icon: SolarLinearIcons.pix,
          activeIcon: SolarBoldIcons.pix,
        ),
        const SpacerWidget(spacing: WidgetSpacing.large),
        TextWidget(
          'Pagar na entrega',
          color: colors.onBackgroundAlt,
        ),
        const SpacerWidget(),
        const OptionWidget(
          text: 'Cartão',
          icon: SolarLinearIcons.card,
          activeIcon: SolarBoldIcons.card,
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        const OptionWidget(
          text: 'Dinheiro',
          icon: SolarLinearIcons.walletMoney,
          activeIcon: SolarBoldIcons.walletMoney,
        ),
      ],
    );
  }
}
