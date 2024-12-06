import 'package:dart_mappable/dart_mappable.dart';

part 'payment_method_enum.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, caseStyle: CaseStyle.snakeCase)
enum PaymentMethodEnum {
  none,
  pix,
  cash,
  debitCard,
  creditCard,
}

extension PaymentMethodEnumExt on PaymentMethodEnum {
  String get value {
    switch (this) {
      case PaymentMethodEnum.none:
        return 'Nenhum';
      case PaymentMethodEnum.pix:
        return 'PIX';
      case PaymentMethodEnum.cash:
        return 'Dinheiro';
      case PaymentMethodEnum.debitCard:
        return 'Cartão de débito';
      case PaymentMethodEnum.creditCard:
        return 'Cartão de crédito';
    }
  }
}
