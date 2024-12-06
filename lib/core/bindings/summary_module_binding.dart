import 'package:delimais_customer/modules/summary/summary_page_controller.dart';
import 'package:get/get.dart';

class SummaryModuleBinding implements Bindings {
  const SummaryModuleBinding();

  @override
  void dependencies() {
    Get.lazyPut(SummaryPageController.new);
  }
}
