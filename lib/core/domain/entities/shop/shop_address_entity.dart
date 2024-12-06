import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'shop_address_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class ShopAddressEntity with ShopAddressEntityMappable {
  const ShopAddressEntity({
    required this.id,
    required this.city,
    required this.street,
    required this.district,
    required this.number,
  });

  final String id;
  final String city;
  final String street;
  final String district;
  final int number;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopAddressEntity &&
        other.id == id &&
        other.city == city &&
        other.street == street &&
        other.district == district &&
        other.number == number;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        city.hashCode ^
        street.hashCode ^
        district.hashCode ^
        number.hashCode;
  }
}
