import 'package:delimais_customer/modules/product/product_page_controller.dart';
import 'package:get/get.dart';

class ProductModuleBinding implements Bindings {
  const ProductModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(ProductPageController.new);
  }
}
