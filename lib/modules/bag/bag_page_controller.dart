import 'package:delimais_customer/core/domain/entities/bag/bag_entity.dart';
import 'package:delimais_customer/core/domain/entities/bag/bag_product_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_entity.dart';
import 'package:get/get.dart';

class BagPageController extends GetxController {
  final _bag = Rx<BagEntity>(
    const BagEntity(products: [], quantity: 0, price: 0),
  );
  final _shop = Rx<ShopEntity?>(null);
  final _isLoading = Rx<bool>(false);

  BagEntity get bag => _bag.value;
  ShopEntity? get shop => _shop.value;
  bool get isLoading => _isLoading.value;

  set shop(ShopEntity? shop) => _shop.value = shop;

  @override
  void onInit() {
    super.onInit();

    _isLoading.value = true;
    _shop.value = Get.arguments as ShopEntity?;
    _isLoading.value = false;
  }

  void clearBag() {
    _bag.value.products.clear();
    _calculateTotals();
  }

  void addProduct(BagProductEntity product) {
    final index = _bag.value.products.indexWhere((e) => e == product);

    if (index > -1 && _bag.value.products[index].notes == product.notes) {
      final oldProduct = _bag.value.products[index];
      _bag.value.products[index] = oldProduct.copyWith(
        quantity: oldProduct.quantity + 1,
      );

      _calculateTotals();
      return;
    }

    _bag.value = _bag.value.copyWith(
      products: [..._bag.value.products, product],
    );

    _calculateTotals();
  }

  void increaseProductQuantity(BagProductEntity product) {
    final index = _bag.value.products.indexWhere((e) => e == product);

    if (index > -1) {
      final product = _bag.value.products[index];
      _bag.value.products[index] = product.copyWith(
        quantity: product.quantity + 1,
      );

      _calculateTotals();
      return;
    }
  }

  void decreaseProductQuantity(BagProductEntity product) {
    final index = _bag.value.products.indexWhere((e) => e == product);

    if (product.quantity > 1) {
      final product = _bag.value.products[index];
      _bag.value.products[index] = product.copyWith(
        quantity: product.quantity - 1,
      );

      _calculateTotals();
      return;
    }

    _bag.value.products.removeAt(index);
    _calculateTotals();
  }

  void _calculateTotals() {
    if (_bag.value.products.isEmpty) {
      _bag
        ..value = _bag.value.copyWith(price: 0)
        ..value = _bag.value.copyWith(quantity: 0);

      return;
    }

    var totalItems = 0;
    var totalPrice = 0.0;
    for (final product in _bag.value.products) {
      totalItems += product.quantity;
      totalPrice += product.product.price * product.quantity;
    }

    _bag
      ..value = _bag.value.copyWith(price: totalPrice)
      ..value = _bag.value.copyWith(quantity: totalItems);

    totalItems = 0;
    totalPrice = 0.0;
  }
}
