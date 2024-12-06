// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shop_address_entity.dart';

class ShopAddressEntityMapper extends ClassMapperBase<ShopAddressEntity> {
  ShopAddressEntityMapper._();

  static ShopAddressEntityMapper? _instance;
  static ShopAddressEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShopAddressEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ShopAddressEntity';

  static String _$id(ShopAddressEntity v) => v.id;
  static const Field<ShopAddressEntity, String> _f$id = Field('id', _$id);
  static String _$city(ShopAddressEntity v) => v.city;
  static const Field<ShopAddressEntity, String> _f$city = Field('city', _$city);
  static String _$street(ShopAddressEntity v) => v.street;
  static const Field<ShopAddressEntity, String> _f$street =
      Field('street', _$street);
  static String _$district(ShopAddressEntity v) => v.district;
  static const Field<ShopAddressEntity, String> _f$district =
      Field('district', _$district);
  static int _$number(ShopAddressEntity v) => v.number;
  static const Field<ShopAddressEntity, int> _f$number =
      Field('number', _$number);

  @override
  final MappableFields<ShopAddressEntity> fields = const {
    #id: _f$id,
    #city: _f$city,
    #street: _f$street,
    #district: _f$district,
    #number: _f$number,
  };
  @override
  final bool ignoreNull = true;

  static ShopAddressEntity _instantiate(DecodingData data) {
    return ShopAddressEntity(
        id: data.dec(_f$id),
        city: data.dec(_f$city),
        street: data.dec(_f$street),
        district: data.dec(_f$district),
        number: data.dec(_f$number));
  }

  @override
  final Function instantiate = _instantiate;

  static ShopAddressEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShopAddressEntity>(map);
  }

  static ShopAddressEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ShopAddressEntity>(json);
  }
}

mixin ShopAddressEntityMappable {
  String toJson() {
    return ShopAddressEntityMapper.ensureInitialized()
        .encodeJson<ShopAddressEntity>(this as ShopAddressEntity);
  }

  Map<String, dynamic> toMap() {
    return ShopAddressEntityMapper.ensureInitialized()
        .encodeMap<ShopAddressEntity>(this as ShopAddressEntity);
  }

  ShopAddressEntityCopyWith<ShopAddressEntity, ShopAddressEntity,
          ShopAddressEntity>
      get copyWith => _ShopAddressEntityCopyWithImpl(
          this as ShopAddressEntity, $identity, $identity);
  @override
  String toString() {
    return ShopAddressEntityMapper.ensureInitialized()
        .stringifyValue(this as ShopAddressEntity);
  }

  @override
  bool operator ==(Object other) {
    return ShopAddressEntityMapper.ensureInitialized()
        .equalsValue(this as ShopAddressEntity, other);
  }

  @override
  int get hashCode {
    return ShopAddressEntityMapper.ensureInitialized()
        .hashValue(this as ShopAddressEntity);
  }
}

extension ShopAddressEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShopAddressEntity, $Out> {
  ShopAddressEntityCopyWith<$R, ShopAddressEntity, $Out>
      get $asShopAddressEntity =>
          $base.as((v, t, t2) => _ShopAddressEntityCopyWithImpl(v, t, t2));
}

abstract class ShopAddressEntityCopyWith<$R, $In extends ShopAddressEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? city,
      String? street,
      String? district,
      int? number});
  ShopAddressEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShopAddressEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShopAddressEntity, $Out>
    implements ShopAddressEntityCopyWith<$R, ShopAddressEntity, $Out> {
  _ShopAddressEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShopAddressEntity> $mapper =
      ShopAddressEntityMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? city,
          String? street,
          String? district,
          int? number}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (city != null) #city: city,
        if (street != null) #street: street,
        if (district != null) #district: district,
        if (number != null) #number: number
      }));
  @override
  ShopAddressEntity $make(CopyWithData data) => ShopAddressEntity(
      id: data.get(#id, or: $value.id),
      city: data.get(#city, or: $value.city),
      street: data.get(#street, or: $value.street),
      district: data.get(#district, or: $value.district),
      number: data.get(#number, or: $value.number));

  @override
  ShopAddressEntityCopyWith<$R2, ShopAddressEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShopAddressEntityCopyWithImpl($value, $cast, t);
}
