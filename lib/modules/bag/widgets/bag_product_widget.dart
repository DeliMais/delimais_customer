part of '../bag_page.dart';

class _BagProductWidget extends GetView<BagPageController>
    with ThemeMixin, MonetaryMixin {
  const _BagProductWidget({required this.product});

  final BagProductEntity product;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return CardWidget(
      padding: EdgeInsets.all(metrics.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(
            height: 60,
            uri: product.product.picture,
            borderRadius: BorderRadius.all(metrics.radius),
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
                TextWidget(
                  product.product.name,
                  style: TextWidgetStyle.titleMedium,
                ),
                TextWidget(
                  product.product.description,
                  color: colors.onBackgroundAlt,
                ),
                const SpacerWidget(spacing: WidgetSpacing.small),
                TextWidget(
                  getPrice(product.product.price),
                  style: TextWidgetStyle.titleMedium,
                ),
                // const SpacerWidget(),
                // const TextWidget(
                //   '1x - Adicional 1\n1x - Adicional 1\n1x - Adicional 1',
                //   maxLines: null,
                // ),
                if (product.notes != null) const SpacerWidget(),
                if (product.notes != null)
                  TextWidget(
                    'OBS: ${product.notes}',
                    color: colors.onBackgroundAlt,
                  ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButtonWidget(
                icon: SolarLinearIcons.minus,
                onPressed: () => controller.decreaseProductQuantity(product),
              ),
              const SpacerWidget(direction: Axis.horizontal),
              TextWidget(product.quantity.toString()),
              const SpacerWidget(direction: Axis.horizontal),
              IconButtonWidget(
                icon: SolarLinearIcons.add,
                onPressed: () => controller.increaseProductQuantity(product),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
