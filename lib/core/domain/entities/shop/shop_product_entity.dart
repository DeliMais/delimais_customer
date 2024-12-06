import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'shop_product_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class ShopProductEntity with ShopProductEntityMappable {
  const ShopProductEntity({
    required this.name,
    required this.description,
    required this.picture,
    required this.price,
  });

  final String name;
  final String description;
  final String picture;
  final double price;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopProductEntity &&
        other.name == name &&
        other.description == description &&
        other.picture == picture &&
        other.price == price;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        picture.hashCode ^
        price.hashCode;
  }
}
