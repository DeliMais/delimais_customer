import 'package:dart_mappable/dart_mappable.dart';
import 'package:delimais_customer/core/domain/entities/bag/bag_entity.dart';
import 'package:delimais_customer/core/domain/entities/order/order_address_entity.dart';
import 'package:delimais_customer/core/domain/entities/order/order_user_entity.dart';
import 'package:delimais_customer/core/domain/enums/order_type_enum.dart';
import 'package:flutter/foundation.dart';

part 'order_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class OrderEntity with OrderEntityMappable {
  const OrderEntity({
    required this.bag,
    required this.type,
    required this.user,
    required this.price,
    this.address,
  });

  final BagEntity bag;
  final OrderTypeEnum type;
  final OrderUserEntity user;
  final OrderAddressEntity? address;
  final double price;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderEntity &&
        other.bag == bag &&
        other.type == type &&
        other.user == user &&
        other.address == address &&
        other.price == price;
  }

  @override
  int get hashCode {
    return bag.hashCode ^
        type.hashCode ^
        user.hashCode ^
        address.hashCode ^
        price.hashCode;
  }
}
