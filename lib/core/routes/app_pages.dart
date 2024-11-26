import 'package:delimais_customer/core/bindings/root_module_binding.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/modules/root/root_page.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage<void>(
      title: 'Raiz',
      name: AppRoutes.root,
      page: RootPage.new,
      binding: const RootModuleBinding(),
    ),
  ];
}
