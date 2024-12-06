import 'package:delimais_customer/core/domain/entities/bag/bag_product_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_product_entity.dart';
import 'package:delimais_customer/core/widgets/fields/text_field_widget.dart';
import 'package:delimais_customer/modules/bag/bag_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPageController extends GetxController {
  final _bagPageController = Get.find<BagPageController>();
  final notesFieldController = TextEditingController();

  final _isLoading = Rx<bool>(false);
  final _quantity = Rx<int>(1);
  final _product = Rx<ShopProductEntity?>(null);

  bool get isLoading => _isLoading.value;
  int get quantity => _quantity.value;
  ShopProductEntity? get product => _product.value;

  @override
  void dispose() {
    notesFieldController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    _isLoading.value = true;
    _product.value = Get.arguments as ShopProductEntity?;
    _isLoading.value = false;
  }

  void increaseQuantity() => _quantity.value += 1;

  void decreaseQuantity() {
    if (_quantity.value > 1) _quantity.value -= 1;
  }

  void addToBag() {
    final product = BagProductEntity(
      product: _product.value!,
      quantity: _quantity.value,
      notes: notesFieldController.getText,
    );

    _bagPageController.addProduct(product);
  }
}
