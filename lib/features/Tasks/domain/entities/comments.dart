import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../User/domain/entities/users.dart';

part 'generated/comments.freezed.dart';
part 'generated/comments.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    required String date,
    required String description,
    required User user,
    required String type,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

typedef Comments = PaginatedList<Comment>;