import 'package:intl/intl.dart';

mixin MonetaryMixin {
  String getPrice(double price) {
    final formatter = NumberFormat.simpleCurrency();
    return formatter.format(price);
  }
}
