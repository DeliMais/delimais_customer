import 'package:dart_mappable/dart_mappable.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_address_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_category_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_delivery_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_hours_entity.dart';
import 'package:delimais_customer/core/domain/entities/shop/shop_pickup_entity.dart';
import 'package:delimais_customer/core/domain/enums/payment_method_enum.dart';
import 'package:delimais_customer/core/domain/mappers/uri_mapper.dart';
import 'package:flutter/foundation.dart';

part 'shop_entity.mapper.dart';

@immutable
@MappableClass(
  ignoreNull: true,
  caseStyle: CaseStyle.snakeCase,
  includeCustomMappers: [UriMapper()],
)
class ShopEntity with ShopEntityMappable {
  const ShopEntity({
    required this.id,
    required this.name,
    required this.logo,
    required this.banner,
    required this.rating,
    required this.isOpened,
    required this.address,
    required this.hours,
    required this.pickup,
    required this.delivery,
    required this.methods,
    required this.categories,
  });

  final String id;
  final String name;
  final Uri logo;
  final Uri banner;
  final int rating;
  final bool isOpened;
  final ShopAddressEntity address;
  final List<ShopHoursEntity> hours;
  final ShopPickupEntity pickup;
  final ShopDeliveryEntity delivery;
  final List<PaymentMethodEnum> methods;
  final List<ShopCategoryEntity> categories;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopEntity &&
        other.id == id &&
        other.name == name &&
        other.logo == logo &&
        other.banner == banner &&
        other.rating == rating &&
        other.isOpened == isOpened &&
        other.address == address &&
        listEquals(other.hours, hours) &&
        other.delivery == delivery &&
        listEquals(other.methods, methods) &&
        listEquals(other.categories, categories);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        logo.hashCode ^
        banner.hashCode ^
        rating.hashCode ^
        isOpened.hashCode ^
        address.hashCode ^
        hours.hashCode ^
        delivery.hashCode ^
        methods.hashCode ^
        categories.hashCode;
  }
}
