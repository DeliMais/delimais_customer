// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_payment_entity.dart';

class OrderPaymentEntityMapper extends ClassMapperBase<OrderPaymentEntity> {
  OrderPaymentEntityMapper._();

  static OrderPaymentEntityMapper? _instance;
  static OrderPaymentEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderPaymentEntityMapper._());
      PaymentMethodEnumMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrderPaymentEntity';

  static PaymentMethodEnum _$method(OrderPaymentEntity v) => v.method;
  static const Field<OrderPaymentEntity, PaymentMethodEnum> _f$method =
      Field('method', _$method);
  static double? _$change(OrderPaymentEntity v) => v.change;
  static const Field<OrderPaymentEntity, double> _f$change =
      Field('change', _$change, opt: true);

  @override
  final MappableFields<OrderPaymentEntity> fields = const {
    #method: _f$method,
    #change: _f$change,
  };
  @override
  final bool ignoreNull = true;

  static OrderPaymentEntity _instantiate(DecodingData data) {
    return OrderPaymentEntity(
        method: data.dec(_f$method), change: data.dec(_f$change));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderPaymentEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderPaymentEntity>(map);
  }

  static OrderPaymentEntity fromJson(String json) {
    return ensureInitialized().decodeJson<OrderPaymentEntity>(json);
  }
}

mixin OrderPaymentEntityMappable {
  String toJson() {
    return OrderPaymentEntityMapper.ensureInitialized()
        .encodeJson<OrderPaymentEntity>(this as OrderPaymentEntity);
  }

  Map<String, dynamic> toMap() {
    return OrderPaymentEntityMapper.ensureInitialized()
        .encodeMap<OrderPaymentEntity>(this as OrderPaymentEntity);
  }

  OrderPaymentEntityCopyWith<OrderPaymentEntity, OrderPaymentEntity,
          OrderPaymentEntity>
      get copyWith => _OrderPaymentEntityCopyWithImpl(
          this as OrderPaymentEntity, $identity, $identity);
  @override
  String toString() {
    return OrderPaymentEntityMapper.ensureInitialized()
        .stringifyValue(this as OrderPaymentEntity);
  }

  @override
  bool operator ==(Object other) {
    return OrderPaymentEntityMapper.ensureInitialized()
        .equalsValue(this as OrderPaymentEntity, other);
  }

  @override
  int get hashCode {
    return OrderPaymentEntityMapper.ensureInitialized()
        .hashValue(this as OrderPaymentEntity);
  }
}

extension OrderPaymentEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderPaymentEntity, $Out> {
  OrderPaymentEntityCopyWith<$R, OrderPaymentEntity, $Out>
      get $asOrderPaymentEntity =>
          $base.as((v, t, t2) => _OrderPaymentEntityCopyWithImpl(v, t, t2));
}

abstract class OrderPaymentEntityCopyWith<$R, $In extends OrderPaymentEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({PaymentMethodEnum? method, double? change});
  OrderPaymentEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OrderPaymentEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderPaymentEntity, $Out>
    implements OrderPaymentEntityCopyWith<$R, OrderPaymentEntity, $Out> {
  _OrderPaymentEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderPaymentEntity> $mapper =
      OrderPaymentEntityMapper.ensureInitialized();
  @override
  $R call({PaymentMethodEnum? method, Object? change = $none}) =>
      $apply(FieldCopyWithData({
        if (method != null) #method: method,
        if (change != $none) #change: change
      }));
  @override
  OrderPaymentEntity $make(CopyWithData data) => OrderPaymentEntity(
      method: data.get(#method, or: $value.method),
      change: data.get(#change, or: $value.change));

  @override
  OrderPaymentEntityCopyWith<$R2, OrderPaymentEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderPaymentEntityCopyWithImpl($value, $cast, t);
}
