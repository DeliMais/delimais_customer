import 'package:dart_mappable/dart_mappable.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_product_entity.dart';
import 'package:flutter/foundation.dart';

part 'bag_product_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class BagProductEntity with BagProductEntityMappable {
  const BagProductEntity({
    required this.product,
    required this.quantity,
    this.notes,
  });

  final ShopProductEntity product;
  final int quantity;
  final String? notes;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BagProductEntity &&
        other.product == product &&
        other.quantity == quantity &&
        other.notes == notes;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode ^ notes.hashCode;
}
