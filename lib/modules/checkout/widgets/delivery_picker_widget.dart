part of '../checkout_page.dart';

class _DeliveryPickerWidget extends StatelessWidget with ThemeMixin {
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
        const OptionWidget(
          isActive: true,
          text: 'Entrega',
          icon: SolarLinearIcons.scooter,
          activeIcon: SolarBoldIcons.scooter,
          trailingText: '1h30m',
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        const OptionWidget(
          text: 'Retirada',
          icon: SolarLinearIcons.shop,
          activeIcon: SolarBoldIcons.shop,
          trailingText: '30m',
        ),
      ],
    );
  }
}
