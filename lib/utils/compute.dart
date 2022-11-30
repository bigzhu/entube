Duration toDuration(String time) {
  return Duration(
    milliseconds: (double.parse(time) * 1000).round(),
  );
}
