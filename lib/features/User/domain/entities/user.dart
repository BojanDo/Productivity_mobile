import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';
part 'generated/user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String firstname,
    required String lastname,
    required String email,
    @JsonKey(name: 'profile_picture') required String profilePicture,
    @JsonKey(name: 'job_title') required String jobTitle,
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'role_name') required String roleName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
