import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/documents.dart';
import '../repositories/documents_repo.dart';

part 'generated/get_documents.freezed.dart';
part 'generated/get_documents.g.dart';

class GetDocuments extends UsecaseWithParams<Documents, GetDocumentsParams> {
  const GetDocuments(this._repository);

  final DocumentsRepository _repository;

  @override
  ResultFuture<Documents> call(GetDocumentsParams params) async =>
      _repository.getDocuments(
        values: params.toJson(),
      );
}

@freezed
class GetDocumentsParams with _$GetDocumentsParams {
  const factory GetDocumentsParams({
    @Default(1) int page,
    String? dateFrom,
    String? dateUntil,
    @JsonKey(name: 'project_id') int? projectId,
  }) = _GetDocumentsParams;

  factory GetDocumentsParams.fromJson(Map<String, dynamic> json) =>
      _$GetDocumentsParamsFromJson(json);
}
