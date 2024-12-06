import 'package:dart_mappable/dart_mappable.dart';
import 'package:delimais_customer/core/domain/entities/bag/bag_product_entity.dart';
import 'package:flutter/foundation.dart';

part 'bag_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class BagEntity with BagEntityMappable {
  const BagEntity({
    required this.products,
    required this.quantity,
    required this.price,
  });

  final int quantity;
  final double price;
  final List<BagProductEntity> products;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BagEntity &&
        other.quantity == quantity &&
        other.price == price &&
        listEquals(other.products, products);
  }

  @override
  int get hashCode => quantity.hashCode ^ price.hashCode ^ products.hashCode;
}
