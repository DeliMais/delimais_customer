// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shop_product_entity.dart';

class ShopProductEntityMapper extends ClassMapperBase<ShopProductEntity> {
  ShopProductEntityMapper._();

  static ShopProductEntityMapper? _instance;
  static ShopProductEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShopProductEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ShopProductEntity';

  static String _$name(ShopProductEntity v) => v.name;
  static const Field<ShopProductEntity, String> _f$name = Field('name', _$name);
  static String _$description(ShopProductEntity v) => v.description;
  static const Field<ShopProductEntity, String> _f$description =
      Field('description', _$description);
  static String _$picture(ShopProductEntity v) => v.picture;
  static const Field<ShopProductEntity, String> _f$picture =
      Field('picture', _$picture);
  static double _$price(ShopProductEntity v) => v.price;
  static const Field<ShopProductEntity, double> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<ShopProductEntity> fields = const {
    #name: _f$name,
    #description: _f$description,
    #picture: _f$picture,
    #price: _f$price,
  };
  @override
  final bool ignoreNull = true;

  static ShopProductEntity _instantiate(DecodingData data) {
    return ShopProductEntity(
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        picture: data.dec(_f$picture),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static ShopProductEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShopProductEntity>(map);
  }

  static ShopProductEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ShopProductEntity>(json);
  }
}

mixin ShopProductEntityMappable {
  String toJson() {
    return ShopProductEntityMapper.ensureInitialized()
        .encodeJson<ShopProductEntity>(this as ShopProductEntity);
  }

  Map<String, dynamic> toMap() {
    return ShopProductEntityMapper.ensureInitialized()
        .encodeMap<ShopProductEntity>(this as ShopProductEntity);
  }

  ShopProductEntityCopyWith<ShopProductEntity, ShopProductEntity,
          ShopProductEntity>
      get copyWith => _ShopProductEntityCopyWithImpl(
          this as ShopProductEntity, $identity, $identity);
  @override
  String toString() {
    return ShopProductEntityMapper.ensureInitialized()
        .stringifyValue(this as ShopProductEntity);
  }

  @override
  bool operator ==(Object other) {
    return ShopProductEntityMapper.ensureInitialized()
        .equalsValue(this as ShopProductEntity, other);
  }

  @override
  int get hashCode {
    return ShopProductEntityMapper.ensureInitialized()
        .hashValue(this as ShopProductEntity);
  }
}

extension ShopProductEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShopProductEntity, $Out> {
  ShopProductEntityCopyWith<$R, ShopProductEntity, $Out>
      get $asShopProductEntity =>
          $base.as((v, t, t2) => _ShopProductEntityCopyWithImpl(v, t, t2));
}

abstract class ShopProductEntityCopyWith<$R, $In extends ShopProductEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? description, String? picture, double? price});
  ShopProductEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShopProductEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShopProductEntity, $Out>
    implements ShopProductEntityCopyWith<$R, ShopProductEntity, $Out> {
  _ShopProductEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShopProductEntity> $mapper =
      ShopProductEntityMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          String? description,
          String? picture,
          double? price}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (picture != null) #picture: picture,
        if (price != null) #price: price
      }));
  @override
  ShopProductEntity $make(CopyWithData data) => ShopProductEntity(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      picture: data.get(#picture, or: $value.picture),
      price: data.get(#price, or: $value.price));

  @override
  ShopProductEntityCopyWith<$R2, ShopProductEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShopProductEntityCopyWithImpl($value, $cast, t);
}
