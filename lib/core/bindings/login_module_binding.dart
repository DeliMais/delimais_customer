import 'package:delimais_customer/modules/login/login_page_controller.dart';
import 'package:get/get.dart';

class LoginModuleBinding implements Bindings {
  const LoginModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(LoginPageController.new);
  }
}
