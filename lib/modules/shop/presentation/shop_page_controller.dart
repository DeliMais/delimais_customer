import 'package:delimais_customer/core/domain/entities/shop/shop_entity.dart';
import 'package:delimais_customer/modules/shop/shop_repository.dart';
import 'package:get/get.dart';

class ShopPageController extends GetxController {
  final _shopRepo = Get.find<ShopRepository>();

  final _currentPage = Rx<int>(0);
  final _isLoading = Rx<bool>(true);
  final _shop = Rx<ShopEntity?>(null);

  int get currentPage => _currentPage.value;
  bool get isLoading => _isLoading.value;
  ShopEntity? get shop => _shop.value;

  set currentPage(int current) => _currentPage.value = current;

  @override
  Future<void> onReady() async {
    super.onReady();

    try {
      _isLoading.value = true;
      _shop.value = await _shopRepo.getOne('id');
    } finally {
      _isLoading.value = false;
    }
  }
}
