import 'package:delimais_customer/modules/checkout/checkout_page_controller.dart';
import 'package:get/get.dart';

class CheckoutModuleBinding implements Bindings {
  const CheckoutModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(CheckoutPageController.new);
  }
}
