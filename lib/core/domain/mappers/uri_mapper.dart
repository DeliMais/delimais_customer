import 'package:dart_mappable/dart_mappable.dart';

class UriMapper extends SimpleMapper<Uri> {
  const UriMapper();

  @override
  Uri decode(dynamic value) {
    if (value is String) {
      return Uri.parse(value);
    }

    throw MapperException.unexpectedType(value.runtimeType, 'String');
  }

  @override
  dynamic encode(Uri self) => self.toString();
}
