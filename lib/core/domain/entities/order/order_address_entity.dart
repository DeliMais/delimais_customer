import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'order_address_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class OrderAddressEntity with OrderAddressEntityMappable {
  const OrderAddressEntity({
    required this.street,
    required this.district,
    required this.number,
    required this.reference,
    this.complement,
  });

  final String street;
  final String district;
  final int number;
  final String reference;
  final String? complement;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderAddressEntity &&
        other.street == street &&
        other.district == district &&
        other.number == number &&
        other.reference == reference &&
        other.complement == complement;
  }

  @override
  int get hashCode {
    return street.hashCode ^
        district.hashCode ^
        number.hashCode ^
        reference.hashCode ^
        complement.hashCode;
  }
}
