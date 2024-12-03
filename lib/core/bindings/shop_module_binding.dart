import 'package:delimais_customer/modules/shop/shop_page_controller.dart';
import 'package:get/get.dart';

class ShopModuleBinding implements Bindings {
  const ShopModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(ShopPageController.new);
  }
}
