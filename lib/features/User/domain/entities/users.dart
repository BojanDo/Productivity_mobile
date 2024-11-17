import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';

part 'generated/users.freezed.dart';
part 'generated/users.g.dart';

@JsonEnum()
enum Role{
  @JsonValue('Owner')
  owner,
  @JsonValue('Developer')
  developer
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String firstname,
    required String lastname,
    required String email,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'job_title') required String jobTitle,
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'role_name') required Role roleName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

typedef Users = PaginatedList<User>;