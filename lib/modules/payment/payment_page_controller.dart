import 'package:delimais_customer/core/domain/entities/order/order_entity.dart';
import 'package:delimais_customer/core/domain/enums/payment_method_enum.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/modules/bag/bag_page_controller.dart';
import 'package:get/get.dart';

class PaymentPageController extends GetxController {
  final _bagPageController = Get.find<BagPageController>();

  final _isLoading = Rx<bool>(false);
  final _order = Rx<OrderEntity?>(null);
  final _method = Rx<PaymentMethodEnum?>(null);

  bool get isLoading => _isLoading.value;
  OrderEntity? get order => _order.value;
  PaymentMethodEnum? get method => _method.value;

  set method(PaymentMethodEnum? method) => _method.value = method;

  @override
  void onInit() {
    super.onInit();

    _isLoading.value = true;
    _order.value = Get.arguments as OrderEntity?;
    _isLoading.value = false;
  }

  Future<void> save() async {
    _bagPageController.clearBag();
    await Get.offAllNamed<void>(AppRoutes.shop);
  }
}
