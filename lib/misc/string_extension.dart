extension StringExtension on String {
  String capitalize() =>
      "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

  String camelCaseToSpaces() => replaceAllMapped(
      RegExp(r'^([a-z])|[A-Z]'), (Match m) => m[1] ?? " ${m[0]}");
}
