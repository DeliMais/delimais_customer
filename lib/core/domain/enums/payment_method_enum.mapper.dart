// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payment_method_enum.dart';

class PaymentMethodEnumMapper extends EnumMapper<PaymentMethodEnum> {
  PaymentMethodEnumMapper._();

  static PaymentMethodEnumMapper? _instance;
  static PaymentMethodEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentMethodEnumMapper._());
    }
    return _instance!;
  }

  static PaymentMethodEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PaymentMethodEnum decode(dynamic value) {
    switch (value) {
      case 0:
        return PaymentMethodEnum.none;
      case 1:
        return PaymentMethodEnum.pix;
      case 2:
        return PaymentMethodEnum.cash;
      case 3:
        return PaymentMethodEnum.debitCard;
      case 4:
        return PaymentMethodEnum.creditCard;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PaymentMethodEnum self) {
    switch (self) {
      case PaymentMethodEnum.none:
        return 0;
      case PaymentMethodEnum.pix:
        return 1;
      case PaymentMethodEnum.cash:
        return 2;
      case PaymentMethodEnum.debitCard:
        return 3;
      case PaymentMethodEnum.creditCard:
        return 4;
    }
  }
}

extension PaymentMethodEnumMapperExtension on PaymentMethodEnum {
  dynamic toValue() {
    PaymentMethodEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PaymentMethodEnum>(this);
  }
}
