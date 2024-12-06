import 'package:delimais_customer/modules/shop/presentation/shop_page_controller.dart';
import 'package:delimais_customer/modules/shop/shop_datasource.dart';
import 'package:delimais_customer/modules/shop/shop_repository.dart';
import 'package:get/get.dart';

class ShopModuleBinding implements Bindings {
  const ShopModuleBinding();

  @override
  void dependencies() {
    Get
      ..lazyPut<ShopRepository>(
        () => const ShopRepositoryImpl(
          datasource: ShopDatasourceImpl(),
        ),
      )
      ..lazyPut(ShopPageController.new);
  }
}
