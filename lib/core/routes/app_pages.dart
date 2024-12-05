import 'package:delimais_customer/core/bindings/login_module_binding.dart';
import 'package:delimais_customer/core/bindings/register_module_binding.dart';
import 'package:delimais_customer/core/bindings/root_module_binding.dart';
import 'package:delimais_customer/core/bindings/shop_module_binding.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/modules/bag/bag_page.dart';
import 'package:delimais_customer/modules/login/login_page.dart';
import 'package:delimais_customer/modules/product/product_page.dart';
import 'package:delimais_customer/modules/register/register_page.dart';
import 'package:delimais_customer/modules/root/root_page.dart';
import 'package:delimais_customer/modules/shop/shop_page.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage<void>(
      title: 'Entrar',
      name: AppRoutes.login,
      page: LoginPage.new,
      binding: const LoginModuleBinding(),
    ),
    GetPage<void>(
      title: 'Registrar',
      name: AppRoutes.register,
      page: RegisterPage.new,
      binding: const RegisterModuleBinding(),
    ),
    GetPage<void>(
      title: 'Raiz',
      name: AppRoutes.root,
      page: RootPage.new,
      binding: const RootModuleBinding(),
    ),
    GetPage<void>(
      title: 'Loja',
      name: AppRoutes.shop,
      page: ShopPage.new,
      binding: const ShopModuleBinding(),
    ),
    GetPage<void>(
      title: 'Produto',
      name: AppRoutes.product,
      page: ProductPage.new,
    ),
    GetPage<void>(
      title: 'Sacola',
      name: AppRoutes.bag,
      page: BagPage.new,
    ),
  ];
}
