// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_user_entity.dart';

class OrderUserEntityMapper extends ClassMapperBase<OrderUserEntity> {
  OrderUserEntityMapper._();

  static OrderUserEntityMapper? _instance;
  static OrderUserEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderUserEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderUserEntity';

  static String _$name(OrderUserEntity v) => v.name;
  static const Field<OrderUserEntity, String> _f$name = Field('name', _$name);
  static String _$phone(OrderUserEntity v) => v.phone;
  static const Field<OrderUserEntity, String> _f$phone =
      Field('phone', _$phone);
  static String? _$cpf(OrderUserEntity v) => v.cpf;
  static const Field<OrderUserEntity, String> _f$cpf =
      Field('cpf', _$cpf, opt: true);

  @override
  final MappableFields<OrderUserEntity> fields = const {
    #name: _f$name,
    #phone: _f$phone,
    #cpf: _f$cpf,
  };
  @override
  final bool ignoreNull = true;

  static OrderUserEntity _instantiate(DecodingData data) {
    return OrderUserEntity(
        name: data.dec(_f$name),
        phone: data.dec(_f$phone),
        cpf: data.dec(_f$cpf));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderUserEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderUserEntity>(map);
  }

  static OrderUserEntity fromJson(String json) {
    return ensureInitialized().decodeJson<OrderUserEntity>(json);
  }
}

mixin OrderUserEntityMappable {
  String toJson() {
    return OrderUserEntityMapper.ensureInitialized()
        .encodeJson<OrderUserEntity>(this as OrderUserEntity);
  }

  Map<String, dynamic> toMap() {
    return OrderUserEntityMapper.ensureInitialized()
        .encodeMap<OrderUserEntity>(this as OrderUserEntity);
  }

  OrderUserEntityCopyWith<OrderUserEntity, OrderUserEntity, OrderUserEntity>
      get copyWith => _OrderUserEntityCopyWithImpl(
          this as OrderUserEntity, $identity, $identity);
  @override
  String toString() {
    return OrderUserEntityMapper.ensureInitialized()
        .stringifyValue(this as OrderUserEntity);
  }

  @override
  bool operator ==(Object other) {
    return OrderUserEntityMapper.ensureInitialized()
        .equalsValue(this as OrderUserEntity, other);
  }

  @override
  int get hashCode {
    return OrderUserEntityMapper.ensureInitialized()
        .hashValue(this as OrderUserEntity);
  }
}

extension OrderUserEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderUserEntity, $Out> {
  OrderUserEntityCopyWith<$R, OrderUserEntity, $Out> get $asOrderUserEntity =>
      $base.as((v, t, t2) => _OrderUserEntityCopyWithImpl(v, t, t2));
}

abstract class OrderUserEntityCopyWith<$R, $In extends OrderUserEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? phone, String? cpf});
  OrderUserEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OrderUserEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderUserEntity, $Out>
    implements OrderUserEntityCopyWith<$R, OrderUserEntity, $Out> {
  _OrderUserEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderUserEntity> $mapper =
      OrderUserEntityMapper.ensureInitialized();
  @override
  $R call({String? name, String? phone, Object? cpf = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (phone != null) #phone: phone,
        if (cpf != $none) #cpf: cpf
      }));
  @override
  OrderUserEntity $make(CopyWithData data) => OrderUserEntity(
      name: data.get(#name, or: $value.name),
      phone: data.get(#phone, or: $value.phone),
      cpf: data.get(#cpf, or: $value.cpf));

  @override
  OrderUserEntityCopyWith<$R2, OrderUserEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderUserEntityCopyWithImpl($value, $cast, t);
}
