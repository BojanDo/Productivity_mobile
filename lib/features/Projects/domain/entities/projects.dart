import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';

part 'generated/projects.freezed.dart';
part 'generated/projects.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}

typedef Projects = PaginatedList<Project>;