import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/badge_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/icon_button_widget.dart';
import 'package:delimais_customer/core/widgets/buttons/touchable_widget.dart';
import 'package:delimais_customer/core/widgets/card_widget.dart';
import 'package:delimais_customer/core/widgets/container_widget.dart';
import 'package:delimais_customer/core/widgets/icon_widget.dart';
import 'package:delimais_customer/core/widgets/image_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/core/widgets/sliver_app_bar_widget.dart';
import 'package:delimais_customer/core/widgets/spacer_widget.dart';
import 'package:delimais_customer/core/widgets/text_widget.dart';
import 'package:delimais_customer/modules/shop/shop_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/info_widget/shop_info_widget.dart';
part 'widgets/info_widget/shop_info_header_widget.dart';
part 'widgets/info_widget/shop_info_time_widget.dart';
part 'widgets/info_widget/shop_info_delivery_widget.dart';
part 'widgets/info_widget/shop_info_payment_widget.dart';
part 'widgets/categories_widget/categories_widget.dart';
part 'widgets/categories_widget/categories_item_widget.dart';
part 'widgets/product_widget.dart';

class ShopPage extends StatelessWidget with ThemeMixin {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return PageWidget(
      body: NestedScrollView(
        body: const _BodyWidget(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBarWidget(
              title: 'Casa do Colono',
              expandedHeight: 300,
              collapsedHeight: 20,
              isBackVisible: false,
              bottom: const _ShopInfoWidget(),
              background: const _BackgroundWidget(),
              actions: [
                IconButtonWidget(
                  isFilled: true,
                  icon: SolarLinearIcons.bell,
                  onPressed: () {},
                ),
                IconButtonWidget(
                  isFilled: true,
                  icon: SolarLinearIcons.heart,
                  onPressed: () {},
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: SpacerWidget(value: 100 + metrics.medium),
            ),
            const _ToolbarWidget(),
            const SliverToBoxAdapter(child: SpacerWidget()),
          ];
        },
      ),
    );
  }
}

class _BackgroundWidget extends StatelessWidget {
  const _BackgroundWidget();

  @override
  Widget build(BuildContext context) {
    return const ImageWidget(provider: AssetImage('assets/delivery.png'));
  }
}

class _ToolbarWidget extends GetView<ShopPageController> with ThemeMixin {
  const _ToolbarWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Obx(
      () => _CategoriesWidget(
        current: controller.currentPage,
        categories: const ['Marmitas', 'Marmitas', 'Marmitas'],
        onPressed: (current) => controller.pageController.animateToPage(
          current,
          curve: metrics.curve,
          duration: metrics.duration,
        ),
      ),
    );
  }
}

class _BodyWidget extends GetView<ShopPageController> with ThemeMixin {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return PageView(
      controller: controller.pageController,
      onPageChanged: (current) => controller.currentPage = current,
      children: [
        ListView.separated(
          itemCount: 100,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: metrics.medium),
          separatorBuilder: (_, __) => const SpacerWidget(),
          itemBuilder: (_, __) => const _ProductWidget(),
        ),
        ListView.separated(
          itemCount: 100,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: metrics.medium),
          separatorBuilder: (_, __) => const SpacerWidget(),
          itemBuilder: (_, __) => const _ProductWidget(),
        ),
        ListView.separated(
          itemCount: 100,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: metrics.medium),
          separatorBuilder: (_, __) => const SpacerWidget(),
          itemBuilder: (_, __) => const _ProductWidget(),
        ),
      ],
    );
  }
}
