// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_address_entity.dart';

class OrderAddressEntityMapper extends ClassMapperBase<OrderAddressEntity> {
  OrderAddressEntityMapper._();

  static OrderAddressEntityMapper? _instance;
  static OrderAddressEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderAddressEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderAddressEntity';

  static String _$street(OrderAddressEntity v) => v.street;
  static const Field<OrderAddressEntity, String> _f$street =
      Field('street', _$street);
  static String _$district(OrderAddressEntity v) => v.district;
  static const Field<OrderAddressEntity, String> _f$district =
      Field('district', _$district);
  static int _$number(OrderAddressEntity v) => v.number;
  static const Field<OrderAddressEntity, int> _f$number =
      Field('number', _$number);
  static String _$reference(OrderAddressEntity v) => v.reference;
  static const Field<OrderAddressEntity, String> _f$reference =
      Field('reference', _$reference);
  static String? _$complement(OrderAddressEntity v) => v.complement;
  static const Field<OrderAddressEntity, String> _f$complement =
      Field('complement', _$complement, opt: true);

  @override
  final MappableFields<OrderAddressEntity> fields = const {
    #street: _f$street,
    #district: _f$district,
    #number: _f$number,
    #reference: _f$reference,
    #complement: _f$complement,
  };
  @override
  final bool ignoreNull = true;

  static OrderAddressEntity _instantiate(DecodingData data) {
    return OrderAddressEntity(
        street: data.dec(_f$street),
        district: data.dec(_f$district),
        number: data.dec(_f$number),
        reference: data.dec(_f$reference),
        complement: data.dec(_f$complement));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderAddressEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderAddressEntity>(map);
  }

  static OrderAddressEntity fromJson(String json) {
    return ensureInitialized().decodeJson<OrderAddressEntity>(json);
  }
}

mixin OrderAddressEntityMappable {
  String toJson() {
    return OrderAddressEntityMapper.ensureInitialized()
        .encodeJson<OrderAddressEntity>(this as OrderAddressEntity);
  }

  Map<String, dynamic> toMap() {
    return OrderAddressEntityMapper.ensureInitialized()
        .encodeMap<OrderAddressEntity>(this as OrderAddressEntity);
  }

  OrderAddressEntityCopyWith<OrderAddressEntity, OrderAddressEntity,
          OrderAddressEntity>
      get copyWith => _OrderAddressEntityCopyWithImpl(
          this as OrderAddressEntity, $identity, $identity);
  @override
  String toString() {
    return OrderAddressEntityMapper.ensureInitialized()
        .stringifyValue(this as OrderAddressEntity);
  }

  @override
  bool operator ==(Object other) {
    return OrderAddressEntityMapper.ensureInitialized()
        .equalsValue(this as OrderAddressEntity, other);
  }

  @override
  int get hashCode {
    return OrderAddressEntityMapper.ensureInitialized()
        .hashValue(this as OrderAddressEntity);
  }
}

extension OrderAddressEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderAddressEntity, $Out> {
  OrderAddressEntityCopyWith<$R, OrderAddressEntity, $Out>
      get $asOrderAddressEntity =>
          $base.as((v, t, t2) => _OrderAddressEntityCopyWithImpl(v, t, t2));
}

abstract class OrderAddressEntityCopyWith<$R, $In extends OrderAddressEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? street,
      String? district,
      int? number,
      String? reference,
      String? complement});
  OrderAddressEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OrderAddressEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderAddressEntity, $Out>
    implements OrderAddressEntityCopyWith<$R, OrderAddressEntity, $Out> {
  _OrderAddressEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderAddressEntity> $mapper =
      OrderAddressEntityMapper.ensureInitialized();
  @override
  $R call(
          {String? street,
          String? district,
          int? number,
          String? reference,
          Object? complement = $none}) =>
      $apply(FieldCopyWithData({
        if (street != null) #street: street,
        if (district != null) #district: district,
        if (number != null) #number: number,
        if (reference != null) #reference: reference,
        if (complement != $none) #complement: complement
      }));
  @override
  OrderAddressEntity $make(CopyWithData data) => OrderAddressEntity(
      street: data.get(#street, or: $value.street),
      district: data.get(#district, or: $value.district),
      number: data.get(#number, or: $value.number),
      reference: data.get(#reference, or: $value.reference),
      complement: data.get(#complement, or: $value.complement));

  @override
  OrderAddressEntityCopyWith<$R2, OrderAddressEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderAddressEntityCopyWithImpl($value, $cast, t);
}
