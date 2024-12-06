import 'package:delimais_customer/modules/bag/bag_page_controller.dart';
import 'package:get/get.dart';

class BagModuleBinding implements Bindings {
  const BagModuleBinding();

  @override
  void dependencies() {
    Get.put(BagPageController(), permanent: true);
  }
}
