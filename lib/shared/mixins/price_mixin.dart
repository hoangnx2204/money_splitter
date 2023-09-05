import 'package:intl/intl.dart';

mixin PriceMixin {
  String formatPrice(num price) {
    return NumberFormat.currency(locale: 'vi').format(price);
  }
}
