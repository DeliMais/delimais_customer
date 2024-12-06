import 'package:delimais_customer/core/mixins/monetary_mixin.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/core/widgets/buttons/button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/safe_area_widget.dart';
import 'package:delimais_customer/core/widgets/sliver_app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/modules/product/product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/product_addon/product_addon_header_widget.dart';
part 'widgets/product_addon/product_addon_item_widget.dart';
part 'widgets/product_bottom_widget.dart';

class ProductPage extends GetView<ProductPageController> {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageWidget(
        isLoading: controller.isLoading,
        resizeToAvoidBottomInset: true,
        footer: const _ProductBottomWidget(),
        body: const CustomScrollView(
          slivers: [
            _AppBarWidget(),
            SliverToBoxAdapter(child: SpacerWidget()),

            _InfoWidget(),
            SliverToBoxAdapter(
              child: SpacerWidget(spacing: WidgetSpacing.large),
            ),
            // const _ProductAddonHeaderWidget(
            //     title: 'Adicionais', min: 0, max: 2),
            // const SliverToBoxAdapter(child: SpacerWidget()),
            // SliverList.separated(
            //   itemCount: 10,
            //   separatorBuilder: (_, __) => const SpacerWidget(
            //     spacing: WidgetSpacing.small,
            //   ),
            //   itemBuilder: (_, __) => const _ProductAddonItemWidget(),
            // ),
            SliverToBoxAdapter(child: _NotesWidget()),
          ],
        ),
      ),
    );
  }
}

class _AppBarWidget extends GetView<ProductPageController> {
  const _AppBarWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final product = controller.product!;
      return SliverAppBarWidget(
        expandedHeight: 300,
        collapsedHeight: 20,
        title: product.name,
        background: ImageWidget(
          aspectRatio: 16 / 9,
          width: double.infinity,
          height: double.infinity,
          uri: product.picture,
        ),
      );
    });
  }
}

class _InfoWidget extends GetView<ProductPageController>
    with ThemeMixin, MonetaryMixin {
  const _InfoWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Obx(() {
      final product = controller.product!;
      return SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: metrics.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                product.name,
                style: TextWidgetStyle.headlineMedium,
              ),
              TextWidget(
                product.description,
                maxLines: 4,
                color: colors.onBackgroundAlt,
              ),
              const SpacerWidget(),
              TextWidget(
                getPrice(product.price),
                style: TextWidgetStyle.titleMedium,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class _NotesWidget extends GetView<ProductPageController> with ThemeMixin {
  const _NotesWidget();

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: metrics.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            'Possui alguma observação?',
            style: TextWidgetStyle.titleMedium,
          ),
          const SpacerWidget(),
          TextFieldWidget(
            icon: SolarLinearIcons.chatDots,
            labelText: 'Observação',
            hintText: 'Ex: Tirar a cebola e maionese à parte.',
            maxLength: 140,
            type: TextInputType.multiline,
            action: TextInputAction.newline,
            controller: controller.notesFieldController,
          ),
        ],
      ),
    );
  }
}
