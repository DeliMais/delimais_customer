import 'package:delimais_customer/core/bindings/bag_module_binding.dart';
import 'package:delimais_customer/core/bindings/checkout_module_binding.dart';
import 'package:delimais_customer/core/bindings/login_module_binding.dart';
import 'package:delimais_customer/core/bindings/payment_module_binding.dart';
import 'package:delimais_customer/core/bindings/product_module_binding.dart';
import 'package:delimais_customer/core/bindings/register_module_binding.dart';
import 'package:delimais_customer/core/bindings/root_module_binding.dart';
import 'package:delimais_customer/core/bindings/shop_module_binding.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/modules/bag/bag_page.dart';
import 'package:delimais_customer/modules/checkout/checkout_page.dart';
import 'package:delimais_customer/modules/login/login_page.dart';
import 'package:delimais_customer/modules/payment/payment_page.dart';
import 'package:delimais_customer/modules/product/product_page.dart';
import 'package:delimais_customer/modules/register/register_page.dart';
import 'package:delimais_customer/modules/root/root_page.dart';
import 'package:delimais_customer/modules/shop/presentation/shop_page.dart';
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
      bindings: const [
        ShopModuleBinding(),
        BagModuleBinding(),
      ],
    ),
    GetPage<void>(
      title: 'Produto',
      name: AppRoutes.product,
      page: ProductPage.new,
      binding: const ProductModuleBinding(),
    ),
    GetPage<void>(
      title: 'Sacola',
      name: AppRoutes.bag,
      page: BagPage.new,
      binding: const BagModuleBinding(),
    ),
    GetPage<void>(
      title: 'Checkout',
      name: AppRoutes.checkout,
      page: CheckoutPage.new,
      binding: const CheckoutModuleBinding(),
    ),
    GetPage<void>(
      title: 'Pagamento',
      name: AppRoutes.payment,
      page: PaymentPage.new,
      binding: const PaymentModuleBinding(),
    ),
  ];
}
