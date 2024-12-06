// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bag_entity.dart';

class BagEntityMapper extends ClassMapperBase<BagEntity> {
  BagEntityMapper._();

  static BagEntityMapper? _instance;
  static BagEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BagEntityMapper._());
      BagProductEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BagEntity';

  static List<BagProductEntity> _$products(BagEntity v) => v.products;
  static const Field<BagEntity, List<BagProductEntity>> _f$products =
      Field('products', _$products);
  static int _$quantity(BagEntity v) => v.quantity;
  static const Field<BagEntity, int> _f$quantity =
      Field('quantity', _$quantity);
  static double _$price(BagEntity v) => v.price;
  static const Field<BagEntity, double> _f$price = Field('price', _$price);

  @override
  final MappableFields<BagEntity> fields = const {
    #products: _f$products,
    #quantity: _f$quantity,
    #price: _f$price,
  };
  @override
  final bool ignoreNull = true;

  static BagEntity _instantiate(DecodingData data) {
    return BagEntity(
        products: data.dec(_f$products),
        quantity: data.dec(_f$quantity),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static BagEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BagEntity>(map);
  }

  static BagEntity fromJson(String json) {
    return ensureInitialized().decodeJson<BagEntity>(json);
  }
}

mixin BagEntityMappable {
  String toJson() {
    return BagEntityMapper.ensureInitialized()
        .encodeJson<BagEntity>(this as BagEntity);
  }

  Map<String, dynamic> toMap() {
    return BagEntityMapper.ensureInitialized()
        .encodeMap<BagEntity>(this as BagEntity);
  }

  BagEntityCopyWith<BagEntity, BagEntity, BagEntity> get copyWith =>
      _BagEntityCopyWithImpl(this as BagEntity, $identity, $identity);
  @override
  String toString() {
    return BagEntityMapper.ensureInitialized()
        .stringifyValue(this as BagEntity);
  }

  @override
  bool operator ==(Object other) {
    return BagEntityMapper.ensureInitialized()
        .equalsValue(this as BagEntity, other);
  }

  @override
  int get hashCode {
    return BagEntityMapper.ensureInitialized().hashValue(this as BagEntity);
  }
}

extension BagEntityValueCopy<$R, $Out> on ObjectCopyWith<$R, BagEntity, $Out> {
  BagEntityCopyWith<$R, BagEntity, $Out> get $asBagEntity =>
      $base.as((v, t, t2) => _BagEntityCopyWithImpl(v, t, t2));
}

abstract class BagEntityCopyWith<$R, $In extends BagEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, BagProductEntity,
          BagProductEntityCopyWith<$R, BagProductEntity, BagProductEntity>>
      get products;
  $R call({List<BagProductEntity>? products, int? quantity, double? price});
  BagEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BagEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BagEntity, $Out>
    implements BagEntityCopyWith<$R, BagEntity, $Out> {
  _BagEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BagEntity> $mapper =
      BagEntityMapper.ensureInitialized();
  @override
  ListCopyWith<$R, BagProductEntity,
          BagProductEntityCopyWith<$R, BagProductEntity, BagProductEntity>>
      get products => ListCopyWith($value.products,
          (v, t) => v.copyWith.$chain(t), (v) => call(products: v));
  @override
  $R call({List<BagProductEntity>? products, int? quantity, double? price}) =>
      $apply(FieldCopyWithData({
        if (products != null) #products: products,
        if (quantity != null) #quantity: quantity,
        if (price != null) #price: price
      }));
  @override
  BagEntity $make(CopyWithData data) => BagEntity(
      products: data.get(#products, or: $value.products),
      quantity: data.get(#quantity, or: $value.quantity),
      price: data.get(#price, or: $value.price));

  @override
  BagEntityCopyWith<$R2, BagEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BagEntityCopyWithImpl($value, $cast, t);
}
