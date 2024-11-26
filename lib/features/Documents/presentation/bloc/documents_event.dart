part of 'documents_bloc.dart';

@freezed
class DocumentsEvent with _$DocumentsEvent {
  const factory DocumentsEvent.get({
    String? dateFrom,
    String? dateUntil,
    int? projectId,
  }) = _DocumentsEventGet;
  const factory DocumentsEvent.getNext({
    required Documents currentDocuments,
    required int page,
    String? dateFrom,
    String? dateUntil,
    int? projectId,
  }) = _DocumentsEventGetNext;
}
