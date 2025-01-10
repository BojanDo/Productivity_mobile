import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/entities/paginated_list.dart';
import '../../../../core/functions/mappers.dart';

part 'generated/users.freezed.dart';

part 'generated/users.g.dart';

@JsonEnum()
enum Role {
  @JsonValue('owner')
  owner,
  @JsonValue('developer')
  developer,
  @JsonValue('basic')
  basic;

  String get displayName {
    switch (this) {
      case Role.owner:
        return 'owner';
      case Role.developer:
        return 'developer';
      case Role.basic:
        return 'basic';
    }
  }
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String firstname,
    required String lastname,
    required String email,
    @JsonKey(name: 'profile_picture', fromJson: profilePictureFromJson)
    String? profilePicture,
    @JsonKey(name: 'job_title') required String jobTitle,
    @JsonKey(name: 'organization_id') int? organizationId,
    @Default(Role.basic) @JsonKey(name: 'role_name') Role roleName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

typedef Users = PaginatedList<User>;


