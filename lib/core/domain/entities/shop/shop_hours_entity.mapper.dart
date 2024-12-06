// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shop_hours_entity.dart';

class ShopHoursEntityMapper extends ClassMapperBase<ShopHoursEntity> {
  ShopHoursEntityMapper._();

  static ShopHoursEntityMapper? _instance;
  static ShopHoursEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShopHoursEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ShopHoursEntity';

  static String _$id(ShopHoursEntity v) => v.id;
  static const Field<ShopHoursEntity, String> _f$id = Field('id', _$id);
  static int _$day(ShopHoursEntity v) => v.day;
  static const Field<ShopHoursEntity, int> _f$day = Field('day', _$day);
  static DateTime _$opening(ShopHoursEntity v) => v.opening;
  static const Field<ShopHoursEntity, DateTime> _f$opening =
      Field('opening', _$opening);
  static DateTime _$closing(ShopHoursEntity v) => v.closing;
  static const Field<ShopHoursEntity, DateTime> _f$closing =
      Field('closing', _$closing);

  @override
  final MappableFields<ShopHoursEntity> fields = const {
    #id: _f$id,
    #day: _f$day,
    #opening: _f$opening,
    #closing: _f$closing,
  };
  @override
  final bool ignoreNull = true;

  static ShopHoursEntity _instantiate(DecodingData data) {
    return ShopHoursEntity(
        id: data.dec(_f$id),
        day: data.dec(_f$day),
        opening: data.dec(_f$opening),
        closing: data.dec(_f$closing));
  }

  @override
  final Function instantiate = _instantiate;

  static ShopHoursEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShopHoursEntity>(map);
  }

  static ShopHoursEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ShopHoursEntity>(json);
  }
}

mixin ShopHoursEntityMappable {
  String toJson() {
    return ShopHoursEntityMapper.ensureInitialized()
        .encodeJson<ShopHoursEntity>(this as ShopHoursEntity);
  }

  Map<String, dynamic> toMap() {
    return ShopHoursEntityMapper.ensureInitialized()
        .encodeMap<ShopHoursEntity>(this as ShopHoursEntity);
  }

  ShopHoursEntityCopyWith<ShopHoursEntity, ShopHoursEntity, ShopHoursEntity>
      get copyWith => _ShopHoursEntityCopyWithImpl(
          this as ShopHoursEntity, $identity, $identity);
  @override
  String toString() {
    return ShopHoursEntityMapper.ensureInitialized()
        .stringifyValue(this as ShopHoursEntity);
  }

  @override
  bool operator ==(Object other) {
    return ShopHoursEntityMapper.ensureInitialized()
        .equalsValue(this as ShopHoursEntity, other);
  }

  @override
  int get hashCode {
    return ShopHoursEntityMapper.ensureInitialized()
        .hashValue(this as ShopHoursEntity);
  }
}

extension ShopHoursEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShopHoursEntity, $Out> {
  ShopHoursEntityCopyWith<$R, ShopHoursEntity, $Out> get $asShopHoursEntity =>
      $base.as((v, t, t2) => _ShopHoursEntityCopyWithImpl(v, t, t2));
}

abstract class ShopHoursEntityCopyWith<$R, $In extends ShopHoursEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, int? day, DateTime? opening, DateTime? closing});
  ShopHoursEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShopHoursEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShopHoursEntity, $Out>
    implements ShopHoursEntityCopyWith<$R, ShopHoursEntity, $Out> {
  _ShopHoursEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShopHoursEntity> $mapper =
      ShopHoursEntityMapper.ensureInitialized();
  @override
  $R call({String? id, int? day, DateTime? opening, DateTime? closing}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (day != null) #day: day,
        if (opening != null) #opening: opening,
        if (closing != null) #closing: closing
      }));
  @override
  ShopHoursEntity $make(CopyWithData data) => ShopHoursEntity(
      id: data.get(#id, or: $value.id),
      day: data.get(#day, or: $value.day),
      opening: data.get(#opening, or: $value.opening),
      closing: data.get(#closing, or: $value.closing));

  @override
  ShopHoursEntityCopyWith<$R2, ShopHoursEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShopHoursEntityCopyWithImpl($value, $cast, t);
}
