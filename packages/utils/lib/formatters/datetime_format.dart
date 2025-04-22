import 'package:utils/lib.dart';

extension DateTimeFormatExtension on DateTime? {
  String? format([String format = 'dd MMM yyyy']) {
    if (this == null) return null;
    return DateFormat(format).format(this!);
  }
}

extension DateTimeFormatSafeExtension on DateTime {
  String format([String format = 'dd MMM yyyy']) {
    return DateFormat(format).format(this);
  }
}
