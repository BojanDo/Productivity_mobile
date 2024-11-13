import '../../../Documents/domain/entities/documents.dart';

Documents paginatedListDocumentFromJson(Map<String, dynamic> json) =>
    Documents.fromJson(json, (Object? item) => Document.fromJson(item as Map<String, dynamic>));

Map<String, dynamic> paginatedListDocumentToJson(Documents paginatedList) =>
    paginatedList.toJson((Document document) => document.toJson());
