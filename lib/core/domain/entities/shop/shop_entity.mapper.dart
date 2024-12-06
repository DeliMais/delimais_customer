// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shop_entity.dart';

class ShopEntityMapper extends ClassMapperBase<ShopEntity> {
  ShopEntityMapper._();

  static ShopEntityMapper? _instance;
  static ShopEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShopEntityMapper._());
      MapperContainer.globals.useAll([UriMapper()]);
      ShopAddressEntityMapper.ensureInitialized();
      ShopHoursEntityMapper.ensureInitialized();
      ShopPickupEntityMapper.ensureInitialized();
      ShopDeliveryEntityMapper.ensureInitialized();
      PaymentMethodEnumMapper.ensureInitialized();
      ShopCategoryEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ShopEntity';

  static String _$id(ShopEntity v) => v.id;
  static const Field<ShopEntity, String> _f$id = Field('id', _$id);
  static String _$name(ShopEntity v) => v.name;
  static const Field<ShopEntity, String> _f$name = Field('name', _$name);
  static Uri _$logo(ShopEntity v) => v.logo;
  static const Field<ShopEntity, Uri> _f$logo = Field('logo', _$logo);
  static Uri _$banner(ShopEntity v) => v.banner;
  static const Field<ShopEntity, Uri> _f$banner = Field('banner', _$banner);
  static int _$rating(ShopEntity v) => v.rating;
  static const Field<ShopEntity, int> _f$rating = Field('rating', _$rating);
  static bool _$isOpened(ShopEntity v) => v.isOpened;
  static const Field<ShopEntity, bool> _f$isOpened =
      Field('isOpened', _$isOpened, key: 'is_opened');
  static ShopAddressEntity _$address(ShopEntity v) => v.address;
  static const Field<ShopEntity, ShopAddressEntity> _f$address =
      Field('address', _$address);
  static List<ShopHoursEntity> _$hours(ShopEntity v) => v.hours;
  static const Field<ShopEntity, List<ShopHoursEntity>> _f$hours =
      Field('hours', _$hours);
  static ShopPickupEntity _$pickup(ShopEntity v) => v.pickup;
  static const Field<ShopEntity, ShopPickupEntity> _f$pickup =
      Field('pickup', _$pickup);
  static ShopDeliveryEntity _$delivery(ShopEntity v) => v.delivery;
  static const Field<ShopEntity, ShopDeliveryEntity> _f$delivery =
      Field('delivery', _$delivery);
  static List<PaymentMethodEnum> _$methods(ShopEntity v) => v.methods;
  static const Field<ShopEntity, List<PaymentMethodEnum>> _f$methods =
      Field('methods', _$methods);
  static List<ShopCategoryEntity> _$categories(ShopEntity v) => v.categories;
  static const Field<ShopEntity, List<ShopCategoryEntity>> _f$categories =
      Field('categories', _$categories);

  @override
  final MappableFields<ShopEntity> fields = const {
    #id: _f$id,
    #name: _f$name,
    #logo: _f$logo,
    #banner: _f$banner,
    #rating: _f$rating,
    #isOpened: _f$isOpened,
    #address: _f$address,
    #hours: _f$hours,
    #pickup: _f$pickup,
    #delivery: _f$delivery,
    #methods: _f$methods,
    #categories: _f$categories,
  };
  @override
  final bool ignoreNull = true;

  static ShopEntity _instantiate(DecodingData data) {
    return ShopEntity(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        logo: data.dec(_f$logo),
        banner: data.dec(_f$banner),
        rating: data.dec(_f$rating),
        isOpened: data.dec(_f$isOpened),
        address: data.dec(_f$address),
        hours: data.dec(_f$hours),
        pickup: data.dec(_f$pickup),
        delivery: data.dec(_f$delivery),
        methods: data.dec(_f$methods),
        categories: data.dec(_f$categories));
  }

  @override
  final Function instantiate = _instantiate;

  static ShopEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShopEntity>(map);
  }

  static ShopEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ShopEntity>(json);
  }
}

mixin ShopEntityMappable {
  String toJson() {
    return ShopEntityMapper.ensureInitialized()
        .encodeJson<ShopEntity>(this as ShopEntity);
  }

  Map<String, dynamic> toMap() {
    return ShopEntityMapper.ensureInitialized()
        .encodeMap<ShopEntity>(this as ShopEntity);
  }

  ShopEntityCopyWith<ShopEntity, ShopEntity, ShopEntity> get copyWith =>
      _ShopEntityCopyWithImpl(this as ShopEntity, $identity, $identity);
  @override
  String toString() {
    return ShopEntityMapper.ensureInitialized()
        .stringifyValue(this as ShopEntity);
  }

  @override
  bool operator ==(Object other) {
    return ShopEntityMapper.ensureInitialized()
        .equalsValue(this as ShopEntity, other);
  }

  @override
  int get hashCode {
    return ShopEntityMapper.ensureInitialized().hashValue(this as ShopEntity);
  }
}

extension ShopEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShopEntity, $Out> {
  ShopEntityCopyWith<$R, ShopEntity, $Out> get $asShopEntity =>
      $base.as((v, t, t2) => _ShopEntityCopyWithImpl(v, t, t2));
}

abstract class ShopEntityCopyWith<$R, $In extends ShopEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ShopAddressEntityCopyWith<$R, ShopAddressEntity, ShopAddressEntity>
      get address;
  ListCopyWith<$R, ShopHoursEntity,
      ShopHoursEntityCopyWith<$R, ShopHoursEntity, ShopHoursEntity>> get hours;
  ShopPickupEntityCopyWith<$R, ShopPickupEntity, ShopPickupEntity> get pickup;
  ShopDeliveryEntityCopyWith<$R, ShopDeliveryEntity, ShopDeliveryEntity>
      get delivery;
  ListCopyWith<$R, PaymentMethodEnum,
      ObjectCopyWith<$R, PaymentMethodEnum, PaymentMethodEnum>> get methods;
  ListCopyWith<
      $R,
      ShopCategoryEntity,
      ShopCategoryEntityCopyWith<$R, ShopCategoryEntity,
          ShopCategoryEntity>> get categories;
  $R call(
      {String? id,
      String? name,
      Uri? logo,
      Uri? banner,
      int? rating,
      bool? isOpened,
      ShopAddressEntity? address,
      List<ShopHoursEntity>? hours,
      ShopPickupEntity? pickup,
      ShopDeliveryEntity? delivery,
      List<PaymentMethodEnum>? methods,
      List<ShopCategoryEntity>? categories});
  ShopEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ShopEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShopEntity, $Out>
    implements ShopEntityCopyWith<$R, ShopEntity, $Out> {
  _ShopEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShopEntity> $mapper =
      ShopEntityMapper.ensureInitialized();
  @override
  ShopAddressEntityCopyWith<$R, ShopAddressEntity, ShopAddressEntity>
      get address => $value.address.copyWith.$chain((v) => call(address: v));
  @override
  ListCopyWith<$R, ShopHoursEntity,
          ShopHoursEntityCopyWith<$R, ShopHoursEntity, ShopHoursEntity>>
      get hours => ListCopyWith(
          $value.hours, (v, t) => v.copyWith.$chain(t), (v) => call(hours: v));
  @override
  ShopPickupEntityCopyWith<$R, ShopPickupEntity, ShopPickupEntity> get pickup =>
      $value.pickup.copyWith.$chain((v) => call(pickup: v));
  @override
  ShopDeliveryEntityCopyWith<$R, ShopDeliveryEntity, ShopDeliveryEntity>
      get delivery => $value.delivery.copyWith.$chain((v) => call(delivery: v));
  @override
  ListCopyWith<$R, PaymentMethodEnum,
          ObjectCopyWith<$R, PaymentMethodEnum, PaymentMethodEnum>>
      get methods => ListCopyWith($value.methods,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(methods: v));
  @override
  ListCopyWith<
      $R,
      ShopCategoryEntity,
      ShopCategoryEntityCopyWith<$R, ShopCategoryEntity,
          ShopCategoryEntity>> get categories => ListCopyWith($value.categories,
      (v, t) => v.copyWith.$chain(t), (v) => call(categories: v));
  @override
  $R call(
          {String? id,
          String? name,
          Uri? logo,
          Uri? banner,
          int? rating,
          bool? isOpened,
          ShopAddressEntity? address,
          List<ShopHoursEntity>? hours,
          ShopPickupEntity? pickup,
          ShopDeliveryEntity? delivery,
          List<PaymentMethodEnum>? methods,
          List<ShopCategoryEntity>? categories}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (logo != null) #logo: logo,
        if (banner != null) #banner: banner,
        if (rating != null) #rating: rating,
        if (isOpened != null) #isOpened: isOpened,
        if (address != null) #address: address,
        if (hours != null) #hours: hours,
        if (pickup != null) #pickup: pickup,
        if (delivery != null) #delivery: delivery,
        if (methods != null) #methods: methods,
        if (categories != null) #categories: categories
      }));
  @override
  ShopEntity $make(CopyWithData data) => ShopEntity(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      logo: data.get(#logo, or: $value.logo),
      banner: data.get(#banner, or: $value.banner),
      rating: data.get(#rating, or: $value.rating),
      isOpened: data.get(#isOpened, or: $value.isOpened),
      address: data.get(#address, or: $value.address),
      hours: data.get(#hours, or: $value.hours),
      pickup: data.get(#pickup, or: $value.pickup),
      delivery: data.get(#delivery, or: $value.delivery),
      methods: data.get(#methods, or: $value.methods),
      categories: data.get(#categories, or: $value.categories));

  @override
  ShopEntityCopyWith<$R2, ShopEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShopEntityCopyWithImpl($value, $cast, t);
}
