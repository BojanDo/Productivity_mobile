import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/auth_response.freezed.dart';
part 'generated/auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    @Default(true) bool status,
    required String message,
}) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
