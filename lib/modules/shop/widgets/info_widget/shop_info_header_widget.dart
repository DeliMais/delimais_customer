part of '../../shop_page.dart';

class _ShopInfoHeaderWidget extends StatelessWidget {
  const _ShopInfoHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HeaderLogoWidget(),
        SpacerWidget(direction: Axis.horizontal),
        Flexible(child: _ShopInfoHeaderContentWidget()),
      ],
    );
  }
}

class _HeaderLogoWidget extends StatelessWidget with ThemeMixin {
  const _HeaderLogoWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return ImageWidget(
      width: 80,
      height: 80,
      borderRadius: BorderRadius.all(metrics.radius),
      provider: const NetworkImage(
        'https://mir-s3-cdn-cf.behance.net/projects/404/3ba465170678061.Y3JvcCw3NDMsNTgxLDE2NSwzMTg.png',
      ),
    );
  }
}

class _ShopInfoHeaderContentWidget extends StatelessWidget with ThemeMixin {
  const _ShopInfoHeaderContentWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              'Casa do Colono',
              style: TextWidgetStyle.headlineSmall,
            ),
            BadgeWidget(text: 'Aberto'),
          ],
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        Row(
          children: [
            IconWidget(
              size: metrics.icon / 1.2,
              color: colors.onBackgroundAlt,
              icon: SolarLinearIcons.mapPoint,
            ),
            SpacerWidget(
              value: metrics.small / 2,
              direction: Axis.horizontal,
            ),
            TextWidget(
              'Rua São Ninguém, 000',
              color: colors.onBackgroundAlt,
            ),
            const Spacer(),
            TextWidget(
              '• 4,9km',
              color: colors.onBackgroundAlt,
            ),
          ],
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        Row(
          children: [
            Row(
              children: [
                IconWidget(
                  color: colors.primary,
                  size: metrics.icon / 1.2,
                  icon: SolarBoldIcons.star,
                ),
                IconWidget(
                  color: colors.primary,
                  size: metrics.icon / 1.2,
                  icon: SolarBoldIcons.star,
                ),
                IconWidget(
                  color: colors.primary,
                  size: metrics.icon / 1.2,
                  icon: SolarBoldIcons.star,
                ),
                IconWidget(
                  color: colors.primary,
                  size: metrics.icon / 1.2,
                  icon: SolarBoldIcons.star,
                ),
                IconWidget(
                  size: metrics.icon / 1.2,
                  icon: SolarLinearIcons.star,
                  color: colors.onBackgroundAlt,
                ),
              ],
            ),
            const SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            TextWidget('4/5', color: colors.onBackgroundAlt),
          ],
        ),
      ],
    );
  }
}
