import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController {
  Future<void> register() async => Get.offAllNamed<void>(AppRoutes.root);
}
