import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_response.freezed.dart';
part 'generated/user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    @Default(true) bool status,
    required String message,
}) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

