extension StringExtension on String {
  String toUpperCaseFirst() {
    return this[0].toUpperCase() + substring(1);
  }
}
