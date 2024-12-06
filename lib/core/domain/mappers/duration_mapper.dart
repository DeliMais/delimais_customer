import 'package:dart_mappable/dart_mappable.dart';

class DurationMapper extends SimpleMapper<Duration> {
  const DurationMapper();

  @override
  Duration decode(dynamic value) {
    if (value is int) {
      return Duration(milliseconds: value);
    }

    throw MapperException.unexpectedType(value.runtimeType, 'int');
  }

  @override
  dynamic encode(Duration self) => self.inMilliseconds;
}
