import 'package:delimais_customer/core/mixins/theme_mixin.dart';
import 'package:delimais_customer/core/widgets/nav_bar_widget.dart';
import 'package:delimais_customer/core/widgets/page_widget.dart';
import 'package:delimais_customer/modules/home/home_page.dart';
import 'package:delimais_customer/modules/orders/orders_page.dart';
import 'package:delimais_customer/modules/profile/profile_page.dart';
import 'package:delimais_customer/modules/root/root_page_controller.dart';
import 'package:delimais_customer/modules/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icon_pack/solar_icon_pack.dart';

class RootPage extends GetView<RootPageController> with ThemeMixin {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (_, metrics) = getTheme(context);

    return PageWidget(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (value) => controller.page = value,
        children: const [
          HomePage(),
          SearchPage(),
          OrdersPage(),
          ProfilePage(),
        ],
      ),
      footer: Obx(
        () => NavBarWidget(
          selected: controller.page,
          onSelected: (page) async => controller.pageController.animateToPage(
            page,
            curve: metrics.curve,
            duration: metrics.duration,
          ),
          items: const [
            NavBarItem(
              text: 'Início',
              icon: SolarLinearIcons.home,
              activeIcon: SolarBoldIcons.home,
            ),
            NavBarItem(
              text: 'Buscar',
              icon: SolarLinearIcons.magnifer,
              activeIcon: SolarBoldIcons.magnifer,
            ),
            NavBarItem(
              text: 'Pedidos',
              icon: SolarLinearIcons.documentText,
              activeIcon: SolarBoldIcons.documentText,
            ),
            NavBarItem(
              text: 'Perfil',
              icon: SolarLinearIcons.userCircle,
              activeIcon: SolarBoldIcons.userCircle,
            ),
          ],
        ),
      ),
    );
  }
}
