import '../config/constants.dart';

String? profilePictureFromJson(String? value) {
  if (value == null) return null;
  return '$kApiUrl/file/$value';
}