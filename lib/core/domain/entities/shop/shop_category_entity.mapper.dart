// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shop_category_entity.dart';

class ShopCategoryEntityMapper extends ClassMapperBase<ShopCategoryEntity> {
  ShopCategoryEntityMapper._();

  static ShopCategoryEntityMapper? _instance;
  static ShopCategoryEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShopCategoryEntityMapper._());
      ShopProductEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ShopCategoryEntity';

  static String _$name(ShopCategoryEntity v) => v.name;
  static const Field<ShopCategoryEntity, String> _f$name =
      Field('name', _$name);
  static List<ShopProductEntity> _$products(ShopCategoryEntity v) => v.products;
  static const Field<ShopCategoryEntity, List<ShopProductEntity>> _f$products =
      Field('products', _$products);

  @override
  final MappableFields<ShopCategoryEntity> fields = const {
    #name: _f$name,
    #products: _f$products,
  };
  @override
  final bool ignoreNull = true;

  static ShopCategoryEntity _instantiate(DecodingData data) {
    return ShopCategoryEntity(
        name: data.dec(_f$name), products: data.dec(_f$products));
  }

  @override
  final Function instantiate = _instantiate;

  static ShopCategoryEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShopCategoryEntity>(map);
  }

  static ShopCategoryEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ShopCategoryEntity>(json);
  }
}

mixin ShopCategoryEntityMappable {
  String toJson() {
    return ShopCategoryEntityMapper.ensureInitialized()
        .encodeJson<ShopCategoryEntity>(this as ShopCategoryEntity);
  }

  Map<String, dynamic> toMap() {
    return ShopCategoryEntityMapper.ensureInitialized()
        .encodeMap<ShopCategoryEntity>(this as ShopCategoryEntity);
  }

  ShopCategoryEntityCopyWith<ShopCategoryEntity, ShopCategoryEntity,
          ShopCategoryEntity>
      get copyWith => _ShopCategoryEntityCopyWithImpl(
          this as ShopCategoryEntity, $identity, $identity);
  @override
  String toString() {
    return ShopCategoryEntityMapper.ensureInitialized()
        .stringifyValue(this as ShopCategoryEntity);
  }

  @override
  bool operator ==(Object other) {
    return ShopCategoryEntityMapper.ensureInitialized()
        .equalsValue(this as ShopCategoryEntity, other);
  }

  @override
  int get hashCode {
    return ShopCategoryEntityMapper.ensureInitialized()
        .hashValue(this as ShopCategoryEntity);
  }
}

extension ShopCategoryEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShopCategoryEntity, $Out> {
  ShopCategoryEntityCopyWith<$R, ShopCategoryEntity, $Out>
      get $asShopCategoryEntity =>
          $base.as((v, t, t2) => _ShopCategoryEntityCopyWithImpl(v, t, t2));
}

abstract class ShopCategoryEntityCopyWith<$R, $In extends ShopCategoryEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ShopProductEntity,
          ShopProductEntityCopyWith<$R, ShopProductEntity, ShopProductEntity>>
      get products;
  $R call({String? name, List<ShopProductEntity>? products});
  ShopCategoryEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShopCategoryEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShopCategoryEntity, $Out>
    implements ShopCategoryEntityCopyWith<$R, ShopCategoryEntity, $Out> {
  _ShopCategoryEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShopCategoryEntity> $mapper =
      ShopCategoryEntityMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ShopProductEntity,
          ShopProductEntityCopyWith<$R, ShopProductEntity, ShopProductEntity>>
      get products => ListCopyWith($value.products,
          (v, t) => v.copyWith.$chain(t), (v) => call(products: v));
  @override
  $R call({String? name, List<ShopProductEntity>? products}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (products != null) #products: products
      }));
  @override
  ShopCategoryEntity $make(CopyWithData data) => ShopCategoryEntity(
      name: data.get(#name, or: $value.name),
      products: data.get(#products, or: $value.products));

  @override
  ShopCategoryEntityCopyWith<$R2, ShopCategoryEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShopCategoryEntityCopyWithImpl($value, $cast, t);
}
