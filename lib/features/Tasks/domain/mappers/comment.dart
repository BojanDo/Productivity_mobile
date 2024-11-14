import '../entities/comments.dart';

Comments paginatedListCommentFromJson(Map<String, dynamic> json) =>
    Comments.fromJson(json, (Object? item) => Comment.fromJson(item as Map<String, dynamic>));

Map<String, dynamic> paginatedListCommentToJson(Comments paginatedList) =>
    paginatedList.toJson((Comment comment) => comment.toJson());
