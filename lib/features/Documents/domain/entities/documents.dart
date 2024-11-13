import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';

part 'generated/documents.freezed.dart';
part 'generated/documents.g.dart';

@freezed
class Document with _$Document {
  const factory Document({
    required String title,
    required String path,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
}

typedef Documents = PaginatedList<Document>;