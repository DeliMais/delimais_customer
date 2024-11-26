import 'package:delimais_customer/modules/root/root_page_controller.dart';
import 'package:get/get.dart';

class RootModuleBinding implements Bindings {
  const RootModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(RootPageController.new);
  }
}
