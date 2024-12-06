import 'package:delimais_customer/core/domain/entities/shop/shop_product_entity.dart';
import 'package:delimais_customer/core/domain/enums/payment_method_enum.dart';
import 'package:delimais_customer/core/mixins/date_time_mixin.dart';
import 'package:delimais_customer/core/mixins/dialog_mixin.dart';
import 'package:delimais_customer/core/mixins/monetary_mixin.dart';
import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/core/theme/theme_colors.dart';
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
import 'package:delimais_customer/modules/bag/bag_page_controller.dart';
import 'package:delimais_customer/modules/shop/presentation/shop_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

part 'widgets/shop_categories/shop_categories_item_widget.dart';
part 'widgets/shop_categories/shop_categories_widget.dart';
part 'widgets/shop_info/shop_info_delivery_widget.dart';
part 'widgets/shop_info/shop_info_header_widget.dart';
part 'widgets/shop_info/shop_info_payment_widget.dart';
part 'widgets/shop_info/shop_info_time_widget.dart';
part 'widgets/shop_info/shop_info_widget.dart';
part 'widgets/shop_product_widget.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> with ThemeMixin {
  late PageController _pageController;
  late ShopPageController _controller;

  @override
  void initState() {
    super.initState();

    _controller = Get.find<ShopPageController>();
    _pageController = PageController(initialPage: _controller.currentPage);
  }

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    const expandedHeight = 250.0;

    return Obx(
      () => PageWidget(
        isLoading: _controller.isLoading,
        fab: _FabWidget(
          onPressed: () async => Get.toNamed<void>(
            AppRoutes.bag,
            arguments: _controller.shop,
          ),
        ),
        body: NestedScrollView(
          body: _BodyWidget(pageController: _pageController),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const _AppBarWidget(expandedHeight: expandedHeight),
              SliverToBoxAdapter(
                child: SpacerWidget(value: expandedHeight - metrics.medium),
              ),
              _ToolbarWidget(pageController: _pageController),
              const SliverToBoxAdapter(child: SpacerWidget()),
            ];
          },
        ),
      ),
    );
  }
}

class _FabWidget extends GetView<BagPageController> with ThemeMixin {
  const _FabWidget({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Obx(() {
      final quantity = controller.bag.quantity;
      return Stack(
        clipBehavior: Clip.none,
        children: [
          IconButtonWidget(
            isFilled: true,
            icon: SolarLinearIcons.bag,
            iconSize: metrics.icon * 1.4,
            borderRadius: BorderRadius.circular(100),
            padding: EdgeInsets.all(metrics.medium / 1.4),
            onPressed: onPressed,
          ),
          if (quantity > 0)
            Positioned(
              bottom: -metrics.small / 2,
              right: -metrics.small / 2,
              child: ContainerWidget(
                padding: EdgeInsets.all(metrics.small / 2),
                decoration: BoxDecoration(
                  color: colors.surface,
                  shape: BoxShape.circle,
                ),
                child: TextWidget(
                  quantity.toString(),
                  color: colors.onSurface,
                  style: TextWidgetStyle.bodySmall,
                ),
              ),
            ),
        ],
      );
    });
  }
}

class _AppBarWidget extends GetView<ShopPageController> {
  const _AppBarWidget({required this.expandedHeight});

  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SliverAppBarWidget(
        title: controller.shop!.name,
        expandedHeight: expandedHeight,
        collapsedHeight: 20,
        isBackVisible: false,
        bottom: const _ShopInfoWidget(),
        background: const _BackgroundWidget(),
      ),
    );
  }
}

class _BackgroundWidget extends GetView<ShopPageController> {
  const _BackgroundWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ImageWidget(
        aspectRatio: 16 / 9,
        width: double.infinity,
        height: double.infinity,
        uri: controller.shop!.banner.toString(),
      ),
    );
  }
}

class _ToolbarWidget extends GetView<ShopPageController> with ThemeMixin {
  const _ToolbarWidget({required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Obx(() {
      final categories = controller.shop!.categories;
      return _ShopCategoriesWidget(
        current: controller.currentPage,
        categories: categories.map((cat) => cat.name).toList(),
        onPressed: (current) => pageController.animateToPage(
          current,
          curve: metrics.curve,
          duration: metrics.duration,
        ),
      );
    });
  }
}

class _BodyWidget extends GetView<ShopPageController>
    with ThemeMixin, DialogMixin {
  const _BodyWidget({required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return Obx(() {
      final categories = controller.shop!.categories;
      return PageView(
        controller: pageController,
        onPageChanged: (current) => controller.currentPage = current,
        children: categories.map((cat) {
          final products = cat.products;
          return ListView.separated(
            itemCount: products.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: metrics.medium),
            separatorBuilder: (_, __) => const SpacerWidget(),
            itemBuilder: (_, index) {
              final product = products[index];
              return _ShopProductWidget(product: product);
            },
          );
        }).toList(),
      );
    });
  }
}
