part of '../../product_page.dart';

class _ProductAddonItemWidget extends StatelessWidget with ThemeMixin {
  const _ProductAddonItemWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: metrics.medium),
      child: CardWidget(
        padding: EdgeInsets.all(metrics.small),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ImageWidget(
                  height: 60,
                  uri: 'assets/logo.png',
                ),
                const SpacerWidget(
                  direction: Axis.horizontal,
                  spacing: WidgetSpacing.small,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                      'Cebola roxa',
                      style: TextWidgetStyle.titleMedium,
                    ),
                    TextWidget(
                      r'+ R$2,00',
                      color: colors.onBackgroundAlt,
                    ),
                  ],
                ),
              ],
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
      ),
    );
  }
}
