import 'package:delimais_customer/core/domain/entities/shop/shop_entity.dart';
import 'package:delimais_customer/modules/shop/shop_datasource.dart';

abstract class ShopRepository {
  Future<ShopEntity> getOne(String id);
}

class ShopRepositoryImpl implements ShopRepository {
  const ShopRepositoryImpl({required this.datasource});

  final ShopDatasource datasource;

  @override
  Future<ShopEntity> getOne(String id) async {
    final data = await datasource.getOne(id);
    return ShopEntityMapper.fromMap(data);
  }
}
