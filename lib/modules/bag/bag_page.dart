import 'package:delimais_customer/core/domain/entities/bag/bag_product_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_entity.dart';
import 'package:delimais_customer/core/mixins/monetary_mixin.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/modules/bag/bag_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/bag_product_widget.dart';

class BagPage extends GetView<BagPageController> {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      isLoading: controller.isLoading,
      header: const _AppBarWidget(),
      body: const _BodyWidget(),
      footer: const _FooterWidget(),
    );
  }
}

class _AppBarWidget extends GetView<BagPageController> {
  const _AppBarWidget();

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      title: 'Sacola',
      isBackVisible: true,
      actions: [
        IconButtonWidget(
          text: 'Limpar',
          icon: SolarLinearIcons.clipboardRemove,
          onPressed: () => controller.clearBag(),
        ),
      ],
    );
  }
}

class _BodyWidget extends GetView<BagPageController> with ThemeMixin {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Obx(() {
      final products = controller.bag.products;
      return ListView.separated(
        padding: EdgeInsets.all(metrics.medium),
        itemCount: products.length,
        separatorBuilder: (_, __) => const SpacerWidget(),
        itemBuilder: (_, index) {
          return _BagProductWidget(product: products[index]);
        },
      );
    });
  }
}

class _FooterWidget extends GetView<BagPageController>
    with ThemeMixin, MonetaryMixin {
  const _FooterWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);
    controller.shop = Get.arguments as ShopEntity?;

    return CardWidget(
      padding: EdgeInsets.all(metrics.medium),
      child: SafeAreaWidget(
        bottom: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              final quantity = controller.bag.quantity;
              final price = getPrice(controller.bag.price);

              return Row(
                children: [
                  TextWidget(
                    'Total: $price',
                    style: TextWidgetStyle.headlineSmall,
                  ),
                  const SpacerWidget(
                    direction: Axis.horizontal,
                    spacing: WidgetSpacing.small,
                  ),
                  TextWidget(
                    '| $quantity ${quantity > 1 ? 'itens' : 'item'}',
                    color: colors.onBackgroundAlt,
                  ),
                ],
              );
            }),
            const SpacerWidget(),
            ButtonWidget(
              text: 'Finalizar compra',
              icon: SolarLinearIcons.checkCircle,
              onPressed: () async => controller.save(),
            ),
          ],
        ),
      ),
    );
  }
}
