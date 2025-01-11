import '../config/constants.dart';

String? urlFromJson(String? value) {
  if (value == null) return null;
  return '$kApiUrl/file/$value';
}
String requiredUrlFromJson(String value) => '$kApiUrl/file/$value';