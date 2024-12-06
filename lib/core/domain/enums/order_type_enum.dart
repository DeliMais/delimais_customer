import 'package:dart_mappable/dart_mappable.dart';

part 'order_type_enum.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, caseStyle: CaseStyle.snakeCase)
enum OrderTypeEnum {
  none,
  pickup,
  delivery,
}

extension OrderTypeEnumExt on OrderTypeEnum {
  String get value {
    switch (this) {
      case OrderTypeEnum.none:
        return 'Nenhum';
      case OrderTypeEnum.pickup:
        return 'Retirada';
      case OrderTypeEnum.delivery:
        return 'Entrega';
    }
  }
}
