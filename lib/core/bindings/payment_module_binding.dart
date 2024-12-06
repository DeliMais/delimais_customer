import 'package:delimais_customer/modules/payment/payment_page_controller.dart';
import 'package:get/get.dart';

class PaymentModuleBinding implements Bindings {
  const PaymentModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(PaymentPageController.new);
  }
}
