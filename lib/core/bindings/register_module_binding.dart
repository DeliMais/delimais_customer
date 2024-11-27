import 'package:delimais_customer/modules/register/register_page_controller.dart';
import 'package:get/get.dart';

class RegisterModuleBinding implements Bindings {
  const RegisterModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(RegisterPageController.new);
  }
}
