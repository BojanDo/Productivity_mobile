import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/functions/mappers.dart';

part 'generated/documents.freezed.dart';
part 'generated/documents.g.dart';

@freezed
class Document with _$Document {
  const factory Document({
    required int id,
    required String title,
    @JsonKey(name: 'path', fromJson: requiredUrlFromJson) required String path,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
}

typedef Documents = PaginatedList<Document>;