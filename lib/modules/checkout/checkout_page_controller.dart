import 'package:delimais_customer/core/domain/entities/bag/bag_entity.dart';
import 'package:delimais_customer/core/domain/entities/order/order_address_entity.dart';
import 'package:delimais_customer/core/domain/entities/order/order_entity.dart';
import 'package:delimais_customer/core/domain/entities/order/order_user_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_entity.dart';
import 'package:delimais_customer/core/domain/enums/order_type_enum.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutPageController extends GetxController {
  final userNameFieldController = TextEditingController();
  final userPhoneFieldController = TextEditingController();
  final userCPFFieldController = TextEditingController();
  final addressStreetFieldController = TextEditingController();
  final addressDistrictFieldController = TextEditingController();
  final addressNumberFieldController = TextEditingController();
  final addressReferenceFieldController = TextEditingController();
  final addressComplementFieldController = TextEditingController();

  final _isLoading = Rx<bool>(false);
  final _bag = Rx<BagEntity?>(null);
  final _shop = Rx<ShopEntity?>(null);
  final _bagPrice = Rx<double>(0);
  final _deliveryTax = Rx<double>(0);
  final _totalPrice = Rx<double>(0);
  final _orderType = Rx<OrderTypeEnum?>(null);

  bool get isLoading => _isLoading.value;
  ShopEntity? get shop => _shop.value;
  double get bagPrice => _bagPrice.value;
  double get deliveryTax => _deliveryTax.value;
  double get totalPrice => _totalPrice.value;
  OrderTypeEnum? get orderType => _orderType.value;

  set orderType(OrderTypeEnum? orderType) => _orderType.value = orderType;

  @override
  void onInit() {
    super.onInit();
    _isLoading.value = true;

    final arguments = Get.arguments as Map<String, dynamic>?;
    _bag.value = arguments?['bag'] as BagEntity?;
    _shop.value = arguments?['shop'] as ShopEntity?;

    _isLoading.value = false;
  }

  @override
  void onReady() {
    super.onReady();

    _calculate();
    _orderType.listen((type) {
      switch (type!) {
        case OrderTypeEnum.delivery:
          _deliveryTax.value = _shop.value?.delivery.price ?? 0.0;
          _calculate();
        case OrderTypeEnum.none:
        case OrderTypeEnum.pickup:
          _deliveryTax.value = 0;
          _calculate();
      }
    });
  }

  @override
  void dispose() {
    userNameFieldController.dispose();
    userPhoneFieldController.dispose();
    userCPFFieldController.dispose();
    super.dispose();
  }

  Future<void> save() async {
    OrderAddressEntity? address;
    if (_orderType.value == OrderTypeEnum.delivery) {
      address = OrderAddressEntity(
        street: addressStreetFieldController.text,
        district: addressDistrictFieldController.text,
        number: int.parse(addressNumberFieldController.text),
        reference: addressReferenceFieldController.text,
        complement: addressComplementFieldController.getText,
      );
    }

    final order = OrderEntity(
      bag: _bag.value!,
      address: address,
      type: _orderType.value!,
      price: _totalPrice.value,
      user: OrderUserEntity(
        name: userNameFieldController.text,
        phone: userPhoneFieldController.text,
        cpf: userCPFFieldController.getText,
      ),
    );

    await Get.toNamed<void>(AppRoutes.payment, arguments: order);
  }

  void _calculate() {
    _bagPrice.value = _bag.value?.price ?? 0.0;
    _totalPrice.value = _bagPrice.value + _deliveryTax.value;
  }
}
