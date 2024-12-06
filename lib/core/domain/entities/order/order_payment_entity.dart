import 'package:dart_mappable/dart_mappable.dart';
import 'package:delimais_customer/core/domain/enums/payment_method_enum.dart';
import 'package:flutter/material.dart';

part 'order_payment_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class OrderPaymentEntity with OrderPaymentEntityMappable {
  const OrderPaymentEntity({
    required this.method,
    this.change,
  });

  final PaymentMethodEnum method;
  final double? change;
}
