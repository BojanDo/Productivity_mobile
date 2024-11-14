import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';

part 'generated/organizations.freezed.dart';
part 'generated/organizations.g.dart';


@freezed
class Organization with _$Organization {
  const factory Organization({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'profile_picture') String? profilePicture,
}) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
}

typedef Organizations = PaginatedList<Organization>;