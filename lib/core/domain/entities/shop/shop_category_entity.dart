import 'package:dart_mappable/dart_mappable.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_product_entity.dart';
import 'package:flutter/foundation.dart';

part 'shop_category_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class ShopCategoryEntity with ShopCategoryEntityMappable {
  const ShopCategoryEntity({
    required this.name,
    required this.products,
  });

  final String name;
  final List<ShopProductEntity> products;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopCategoryEntity &&
        other.name == name &&
        listEquals(other.products, products);
  }

  @override
  int get hashCode => name.hashCode ^ products.hashCode;
}
