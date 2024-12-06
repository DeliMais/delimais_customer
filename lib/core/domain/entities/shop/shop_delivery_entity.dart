import 'package:dart_mappable/dart_mappable.dart';
import 'package:delimais_customer/core/domain/mappers/duration_mapper.dart';
import 'package:flutter/foundation.dart';

part 'shop_delivery_entity.mapper.dart';

@immutable
@MappableClass(
  ignoreNull: true,
  caseStyle: CaseStyle.snakeCase,
  includeCustomMappers: [DurationMapper()],
)
class ShopDeliveryEntity with ShopDeliveryEntityMappable {
  const ShopDeliveryEntity({
    required this.id,
    required this.min,
    required this.max,
    required this.price,
  });

  final String id;
  final Duration min;
  final Duration max;
  final double price;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopDeliveryEntity &&
        other.id == id &&
        other.min == min &&
        other.max == max &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^ min.hashCode ^ max.hashCode ^ price.hashCode;
  }
}
