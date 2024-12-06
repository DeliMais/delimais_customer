// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_type_enum.dart';

class OrderTypeEnumMapper extends EnumMapper<OrderTypeEnum> {
  OrderTypeEnumMapper._();

  static OrderTypeEnumMapper? _instance;
  static OrderTypeEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderTypeEnumMapper._());
    }
    return _instance!;
  }

  static OrderTypeEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  OrderTypeEnum decode(dynamic value) {
    switch (value) {
      case 0:
        return OrderTypeEnum.none;
      case 1:
        return OrderTypeEnum.pickup;
      case 2:
        return OrderTypeEnum.delivery;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(OrderTypeEnum self) {
    switch (self) {
      case OrderTypeEnum.none:
        return 0;
      case OrderTypeEnum.pickup:
        return 1;
      case OrderTypeEnum.delivery:
        return 2;
    }
  }
}

extension OrderTypeEnumMapperExtension on OrderTypeEnum {
  dynamic toValue() {
    OrderTypeEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<OrderTypeEnum>(this);
  }
}
