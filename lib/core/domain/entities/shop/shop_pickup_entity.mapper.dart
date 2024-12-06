// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shop_pickup_entity.dart';

class ShopPickupEntityMapper extends ClassMapperBase<ShopPickupEntity> {
  ShopPickupEntityMapper._();

  static ShopPickupEntityMapper? _instance;
  static ShopPickupEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShopPickupEntityMapper._());
      MapperContainer.globals.useAll([DurationMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'ShopPickupEntity';

  static String _$id(ShopPickupEntity v) => v.id;
  static const Field<ShopPickupEntity, String> _f$id = Field('id', _$id);
  static Duration _$min(ShopPickupEntity v) => v.min;
  static const Field<ShopPickupEntity, Duration> _f$min = Field('min', _$min);
  static Duration _$max(ShopPickupEntity v) => v.max;
  static const Field<ShopPickupEntity, Duration> _f$max = Field('max', _$max);
  static double _$price(ShopPickupEntity v) => v.price;
  static const Field<ShopPickupEntity, double> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<ShopPickupEntity> fields = const {
    #id: _f$id,
    #min: _f$min,
    #max: _f$max,
    #price: _f$price,
  };
  @override
  final bool ignoreNull = true;

  static ShopPickupEntity _instantiate(DecodingData data) {
    return ShopPickupEntity(
        id: data.dec(_f$id),
        min: data.dec(_f$min),
        max: data.dec(_f$max),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static ShopPickupEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShopPickupEntity>(map);
  }

  static ShopPickupEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ShopPickupEntity>(json);
  }
}

mixin ShopPickupEntityMappable {
  String toJson() {
    return ShopPickupEntityMapper.ensureInitialized()
        .encodeJson<ShopPickupEntity>(this as ShopPickupEntity);
  }

  Map<String, dynamic> toMap() {
    return ShopPickupEntityMapper.ensureInitialized()
        .encodeMap<ShopPickupEntity>(this as ShopPickupEntity);
  }

  ShopPickupEntityCopyWith<ShopPickupEntity, ShopPickupEntity, ShopPickupEntity>
      get copyWith => _ShopPickupEntityCopyWithImpl(
          this as ShopPickupEntity, $identity, $identity);
  @override
  String toString() {
    return ShopPickupEntityMapper.ensureInitialized()
        .stringifyValue(this as ShopPickupEntity);
  }

  @override
  bool operator ==(Object other) {
    return ShopPickupEntityMapper.ensureInitialized()
        .equalsValue(this as ShopPickupEntity, other);
  }

  @override
  int get hashCode {
    return ShopPickupEntityMapper.ensureInitialized()
        .hashValue(this as ShopPickupEntity);
  }
}

extension ShopPickupEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShopPickupEntity, $Out> {
  ShopPickupEntityCopyWith<$R, ShopPickupEntity, $Out>
      get $asShopPickupEntity =>
          $base.as((v, t, t2) => _ShopPickupEntityCopyWithImpl(v, t, t2));
}

abstract class ShopPickupEntityCopyWith<$R, $In extends ShopPickupEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, Duration? min, Duration? max, double? price});
  ShopPickupEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShopPickupEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShopPickupEntity, $Out>
    implements ShopPickupEntityCopyWith<$R, ShopPickupEntity, $Out> {
  _ShopPickupEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShopPickupEntity> $mapper =
      ShopPickupEntityMapper.ensureInitialized();
  @override
  $R call({String? id, Duration? min, Duration? max, double? price}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (min != null) #min: min,
        if (max != null) #max: max,
        if (price != null) #price: price
      }));
  @override
  ShopPickupEntity $make(CopyWithData data) => ShopPickupEntity(
      id: data.get(#id, or: $value.id),
      min: data.get(#min, or: $value.min),
      max: data.get(#max, or: $value.max),
      price: data.get(#price, or: $value.price));

  @override
  ShopPickupEntityCopyWith<$R2, ShopPickupEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShopPickupEntityCopyWithImpl($value, $cast, t);
}
