part of '../shop_page.dart';

class _ShopProductWidget extends StatelessWidget
    with ThemeMixin, MonetaryMixin {
  const _ShopProductWidget({required this.product});

  final ShopProductEntity product;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return TouchableWidget(
      onPressed: () async => Get.toNamed<void>(
        AppRoutes.product,
        arguments: product,
      ),
      child: CardWidget(
        padding: EdgeInsets.all(metrics.small),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageWidget(
              height: 68,
              uri: product.picture,
              borderRadius: BorderRadius.all(metrics.radius),
            ),
            const SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.small,
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    product.name,
                    style: TextWidgetStyle.titleMedium,
                  ),
                  TextWidget(
                    product.description,
                    color: colors.onBackgroundAlt,
                  ),
                  const SpacerWidget(spacing: WidgetSpacing.small),
                  TextWidget(
                    getPrice(product.price),
                    style: TextWidgetStyle.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
