part of '../bag_page.dart';

class _BagProductWidget extends StatelessWidget with ThemeMixin {
  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return CardWidget(
      padding: EdgeInsets.all(metrics.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageWidget(
            height: 60,
            provider: AssetImage('assets/logo.png'),
          ),
          const SpacerWidget(
            direction: Axis.horizontal,
            spacing: WidgetSpacing.small,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  'Marmita Grande',
                  style: TextWidgetStyle.titleMedium,
                ),
                TextWidget(
                  'Descrição do produto...',
                  color: colors.onBackgroundAlt,
                ),
                const SpacerWidget(spacing: WidgetSpacing.small),
                const TextWidget(
                  r'R$100,00',
                  style: TextWidgetStyle.titleMedium,
                ),
                const SpacerWidget(),
                const TextWidget(
                  '1x - Adicional 1\n1x - Adicional 1\n1x - Adicional 1',
                  maxLines: null,
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButtonWidget(
                icon: SolarLinearIcons.minus,
                onPressed: () => {},
              ),
              const SpacerWidget(direction: Axis.horizontal),
              const TextWidget('0'),
              const SpacerWidget(direction: Axis.horizontal),
              IconButtonWidget(
                icon: SolarLinearIcons.add,
                onPressed: () => {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
