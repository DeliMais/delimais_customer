// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_entity.dart';

class OrderEntityMapper extends ClassMapperBase<OrderEntity> {
  OrderEntityMapper._();

  static OrderEntityMapper? _instance;
  static OrderEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderEntityMapper._());
      BagEntityMapper.ensureInitialized();
      OrderTypeEnumMapper.ensureInitialized();
      OrderUserEntityMapper.ensureInitialized();
      OrderAddressEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrderEntity';

  static BagEntity _$bag(OrderEntity v) => v.bag;
  static const Field<OrderEntity, BagEntity> _f$bag = Field('bag', _$bag);
  static OrderTypeEnum _$type(OrderEntity v) => v.type;
  static const Field<OrderEntity, OrderTypeEnum> _f$type =
      Field('type', _$type);
  static OrderUserEntity _$user(OrderEntity v) => v.user;
  static const Field<OrderEntity, OrderUserEntity> _f$user =
      Field('user', _$user);
  static double _$price(OrderEntity v) => v.price;
  static const Field<OrderEntity, double> _f$price = Field('price', _$price);
  static OrderAddressEntity? _$address(OrderEntity v) => v.address;
  static const Field<OrderEntity, OrderAddressEntity> _f$address =
      Field('address', _$address, opt: true);

  @override
  final MappableFields<OrderEntity> fields = const {
    #bag: _f$bag,
    #type: _f$type,
    #user: _f$user,
    #price: _f$price,
    #address: _f$address,
  };
  @override
  final bool ignoreNull = true;

  static OrderEntity _instantiate(DecodingData data) {
    return OrderEntity(
        bag: data.dec(_f$bag),
        type: data.dec(_f$type),
        user: data.dec(_f$user),
        price: data.dec(_f$price),
        address: data.dec(_f$address));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderEntity>(map);
  }

  static OrderEntity fromJson(String json) {
    return ensureInitialized().decodeJson<OrderEntity>(json);
  }
}

mixin OrderEntityMappable {
  String toJson() {
    return OrderEntityMapper.ensureInitialized()
        .encodeJson<OrderEntity>(this as OrderEntity);
  }

  Map<String, dynamic> toMap() {
    return OrderEntityMapper.ensureInitialized()
        .encodeMap<OrderEntity>(this as OrderEntity);
  }

  OrderEntityCopyWith<OrderEntity, OrderEntity, OrderEntity> get copyWith =>
      _OrderEntityCopyWithImpl(this as OrderEntity, $identity, $identity);
  @override
  String toString() {
    return OrderEntityMapper.ensureInitialized()
        .stringifyValue(this as OrderEntity);
  }

  @override
  bool operator ==(Object other) {
    return OrderEntityMapper.ensureInitialized()
        .equalsValue(this as OrderEntity, other);
  }

  @override
  int get hashCode {
    return OrderEntityMapper.ensureInitialized().hashValue(this as OrderEntity);
  }
}

extension OrderEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderEntity, $Out> {
  OrderEntityCopyWith<$R, OrderEntity, $Out> get $asOrderEntity =>
      $base.as((v, t, t2) => _OrderEntityCopyWithImpl(v, t, t2));
}

abstract class OrderEntityCopyWith<$R, $In extends OrderEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BagEntityCopyWith<$R, BagEntity, BagEntity> get bag;
  OrderUserEntityCopyWith<$R, OrderUserEntity, OrderUserEntity> get user;
  OrderAddressEntityCopyWith<$R, OrderAddressEntity, OrderAddressEntity>?
      get address;
  $R call(
      {BagEntity? bag,
      OrderTypeEnum? type,
      OrderUserEntity? user,
      double? price,
      OrderAddressEntity? address});
  OrderEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrderEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderEntity, $Out>
    implements OrderEntityCopyWith<$R, OrderEntity, $Out> {
  _OrderEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderEntity> $mapper =
      OrderEntityMapper.ensureInitialized();
  @override
  BagEntityCopyWith<$R, BagEntity, BagEntity> get bag =>
      $value.bag.copyWith.$chain((v) => call(bag: v));
  @override
  OrderUserEntityCopyWith<$R, OrderUserEntity, OrderUserEntity> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  OrderAddressEntityCopyWith<$R, OrderAddressEntity, OrderAddressEntity>?
      get address => $value.address?.copyWith.$chain((v) => call(address: v));
  @override
  $R call(
          {BagEntity? bag,
          OrderTypeEnum? type,
          OrderUserEntity? user,
          double? price,
          Object? address = $none}) =>
      $apply(FieldCopyWithData({
        if (bag != null) #bag: bag,
        if (type != null) #type: type,
        if (user != null) #user: user,
        if (price != null) #price: price,
        if (address != $none) #address: address
      }));
  @override
  OrderEntity $make(CopyWithData data) => OrderEntity(
      bag: data.get(#bag, or: $value.bag),
      type: data.get(#type, or: $value.type),
      user: data.get(#user, or: $value.user),
      price: data.get(#price, or: $value.price),
      address: data.get(#address, or: $value.address));

  @override
  OrderEntityCopyWith<$R2, OrderEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderEntityCopyWithImpl($value, $cast, t);
}
