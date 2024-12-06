// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shop_delivery_entity.dart';

class ShopDeliveryEntityMapper extends ClassMapperBase<ShopDeliveryEntity> {
  ShopDeliveryEntityMapper._();

  static ShopDeliveryEntityMapper? _instance;
  static ShopDeliveryEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShopDeliveryEntityMapper._());
      MapperContainer.globals.useAll([DurationMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'ShopDeliveryEntity';

  static String _$id(ShopDeliveryEntity v) => v.id;
  static const Field<ShopDeliveryEntity, String> _f$id = Field('id', _$id);
  static Duration _$min(ShopDeliveryEntity v) => v.min;
  static const Field<ShopDeliveryEntity, Duration> _f$min = Field('min', _$min);
  static Duration _$max(ShopDeliveryEntity v) => v.max;
  static const Field<ShopDeliveryEntity, Duration> _f$max = Field('max', _$max);
  static double _$price(ShopDeliveryEntity v) => v.price;
  static const Field<ShopDeliveryEntity, double> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<ShopDeliveryEntity> fields = const {
    #id: _f$id,
    #min: _f$min,
    #max: _f$max,
    #price: _f$price,
  };
  @override
  final bool ignoreNull = true;

  static ShopDeliveryEntity _instantiate(DecodingData data) {
    return ShopDeliveryEntity(
        id: data.dec(_f$id),
        min: data.dec(_f$min),
        max: data.dec(_f$max),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static ShopDeliveryEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShopDeliveryEntity>(map);
  }

  static ShopDeliveryEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ShopDeliveryEntity>(json);
  }
}

mixin ShopDeliveryEntityMappable {
  String toJson() {
    return ShopDeliveryEntityMapper.ensureInitialized()
        .encodeJson<ShopDeliveryEntity>(this as ShopDeliveryEntity);
  }

  Map<String, dynamic> toMap() {
    return ShopDeliveryEntityMapper.ensureInitialized()
        .encodeMap<ShopDeliveryEntity>(this as ShopDeliveryEntity);
  }

  ShopDeliveryEntityCopyWith<ShopDeliveryEntity, ShopDeliveryEntity,
          ShopDeliveryEntity>
      get copyWith => _ShopDeliveryEntityCopyWithImpl(
          this as ShopDeliveryEntity, $identity, $identity);
  @override
  String toString() {
    return ShopDeliveryEntityMapper.ensureInitialized()
        .stringifyValue(this as ShopDeliveryEntity);
  }

  @override
  bool operator ==(Object other) {
    return ShopDeliveryEntityMapper.ensureInitialized()
        .equalsValue(this as ShopDeliveryEntity, other);
  }

  @override
  int get hashCode {
    return ShopDeliveryEntityMapper.ensureInitialized()
        .hashValue(this as ShopDeliveryEntity);
  }
}

extension ShopDeliveryEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShopDeliveryEntity, $Out> {
  ShopDeliveryEntityCopyWith<$R, ShopDeliveryEntity, $Out>
      get $asShopDeliveryEntity =>
          $base.as((v, t, t2) => _ShopDeliveryEntityCopyWithImpl(v, t, t2));
}

abstract class ShopDeliveryEntityCopyWith<$R, $In extends ShopDeliveryEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, Duration? min, Duration? max, double? price});
  ShopDeliveryEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShopDeliveryEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShopDeliveryEntity, $Out>
    implements ShopDeliveryEntityCopyWith<$R, ShopDeliveryEntity, $Out> {
  _ShopDeliveryEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShopDeliveryEntity> $mapper =
      ShopDeliveryEntityMapper.ensureInitialized();
  @override
  $R call({String? id, Duration? min, Duration? max, double? price}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (min != null) #min: min,
        if (max != null) #max: max,
        if (price != null) #price: price
      }));
  @override
  ShopDeliveryEntity $make(CopyWithData data) => ShopDeliveryEntity(
      id: data.get(#id, or: $value.id),
      min: data.get(#min, or: $value.min),
      max: data.get(#max, or: $value.max),
      price: data.get(#price, or: $value.price));

  @override
  ShopDeliveryEntityCopyWith<$R2, ShopDeliveryEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShopDeliveryEntityCopyWithImpl($value, $cast, t);
}
