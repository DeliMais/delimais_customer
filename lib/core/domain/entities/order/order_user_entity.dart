import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'order_user_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class OrderUserEntity with OrderUserEntityMappable {
  const OrderUserEntity({
    required this.name,
    required this.phone,
    this.cpf,
  });

  final String name;
  final String phone;
  final String? cpf;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderUserEntity &&
        other.name == name &&
        other.phone == phone &&
        other.cpf == cpf;
  }

  @override
  int get hashCode => name.hashCode ^ phone.hashCode ^ cpf.hashCode;
}
