import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  Future<void> login() async => Get.offAllNamed<void>(AppRoutes.root);
}
