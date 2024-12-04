part of '../shop_page.dart';

class _ProductWidget extends StatelessWidget with ThemeMixin {
  const _ProductWidget({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return TouchableWidget(
      onPressed: onPressed,
      child: CardWidget(
        height: 80 + metrics.small,
        padding: EdgeInsets.all(metrics.small),
        child: Row(
          children: [
            const ImageWidget(
              height: double.infinity,
              provider: AssetImage('assets/logo.png'),
            ),
            const SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Column(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
