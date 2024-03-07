extension DateTimeExtensions on DateTime {
  String toAPODDate() {
    return '$year-$month-$day';
  }
}
