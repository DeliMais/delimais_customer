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
        Expanded(child: _ShopInfoHeaderContentWidget()),
      ],
    );
  }
}

class _HeaderLogoWidget extends GetView<ShopPageController> with ThemeMixin {
  const _HeaderLogoWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Obx(
      () => ImageWidget(
        width: 68,
        height: 68,
        borderRadius: BorderRadius.all(metrics.radius),
        uri: controller.shop!.logo.toString(),
      ),
    );
  }
}

class _ShopInfoHeaderContentWidget extends GetView<ShopPageController>
    with ThemeMixin {
  const _ShopInfoHeaderContentWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() {
          final shop = controller.shop!;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: TextWidget(
                  shop.name,
                  style: TextWidgetStyle.headlineSmall,
                ),
              ),
              BadgeWidget(text: shop.isOpened ? 'Aberto' : 'Fechado'),
            ],
          );
        }),
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
            Expanded(
              child: Obx(() {
                final address = controller.shop!.address;
                return TextWidget(
                  '${address.street}, ${address.number}',
                  color: colors.onBackgroundAlt,
                );
              }),
            ),
            // TextWidget(
            //   ' • 4,9km',
            //   color: colors.onBackgroundAlt,
            // ),
          ],
        ),
        const SpacerWidget(spacing: WidgetSpacing.small),
        const _RatingWidget(),
      ],
    );
  }
}

class _RatingWidget extends GetView<ShopPageController> with ThemeMixin {
  const _RatingWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    final iconSize = metrics.icon / 1.2;

    return Obx(() {
      final rating = controller.shop!.rating;

      final star1 = _getIconAndColor(rating >= 1, colors);
      final star2 = _getIconAndColor(rating >= 2, colors);
      final star3 = _getIconAndColor(rating >= 3, colors);
      final star4 = _getIconAndColor(rating >= 4, colors);
      final star5 = _getIconAndColor(rating >= 5, colors);

      return Row(
        children: [
          Row(
            children: [
              IconWidget(
                size: iconSize,
                icon: star1.icon,
                color: star1.color,
              ),
              IconWidget(
                size: iconSize,
                icon: star2.icon,
                color: star2.color,
              ),
              IconWidget(
                size: iconSize,
                icon: star3.icon,
                color: star3.color,
              ),
              IconWidget(
                size: iconSize,
                icon: star4.icon,
                color: star4.color,
              ),
              IconWidget(
                size: iconSize,
                icon: star5.icon,
                color: star5.color,
              ),
            ],
          ),
          const SpacerWidget(
            direction: Axis.horizontal,
            spacing: WidgetSpacing.small,
          ),
          TextWidget('$rating/5', color: colors.onBackgroundAlt),
        ],
      );
    });
  }

  ({IconData icon, Color color}) _getIconAndColor(
    bool isActive,
    ThemeColors colors,
  ) {
    var icon = SolarLinearIcons.star;
    var color = colors.onBackgroundAlt;
    if (isActive) {
      icon = SolarBoldIcons.star;
      color = colors.primary;
    }

    return (icon: icon, color: color);
  }
}
