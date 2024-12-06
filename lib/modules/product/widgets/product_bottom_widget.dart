part of '../product_page.dart';

class _ProductBottomWidget extends GetView<ProductPageController>
    with ThemeMixin {
  const _ProductBottomWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return ContainerWidget(
      color: colors.background,
      padding: EdgeInsets.all(metrics.medium),
      child: SafeAreaWidget(
        bottom: true,
        child: Row(
          children: [
            Row(
              children: [
                IconButtonWidget(
                  icon: SolarLinearIcons.minus,
                  onPressed: controller.decreaseQuantity,
                ),
                const SpacerWidget(direction: Axis.horizontal),
                Obx(() => TextWidget(controller.quantity.toString())),
                const SpacerWidget(direction: Axis.horizontal),
                IconButtonWidget(
                  icon: SolarLinearIcons.add,
                  onPressed: controller.increaseQuantity,
                ),
              ],
            ),
            const SpacerWidget(
              direction: Axis.horizontal,
              spacing: WidgetSpacing.large,
            ),
            Flexible(
              child: ButtonWidget(
                text: 'Adicionar',
                icon: SolarLinearIcons.addCircle,
                onPressed: () async {
                  controller.addToBag();
                  await Get.offNamed<void>(AppRoutes.shop);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
