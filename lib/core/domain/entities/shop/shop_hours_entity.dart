import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'shop_hours_entity.mapper.dart';

@immutable
@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class ShopHoursEntity with ShopHoursEntityMappable {
  const ShopHoursEntity({
    required this.id,
    required this.day,
    required this.opening,
    required this.closing,
  });

  final String id;
  final int day;
  final DateTime opening;
  final DateTime closing;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopHoursEntity &&
        other.id == id &&
        other.day == day &&
        other.opening == opening &&
        other.closing == closing;
  }

  @override
  int get hashCode {
    return id.hashCode ^ day.hashCode ^ opening.hashCode ^ closing.hashCode;
  }
}
