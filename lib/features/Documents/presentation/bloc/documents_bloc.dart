import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/documents.dart';
import '../../domain/usecases/get_documents.dart';

part 'documents_event.dart';

part 'documents_state.dart';

part 'generated/documents_bloc.freezed.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  DocumentsBloc({
    required GetDocuments getDocuments,
  })  : _getDocuments = getDocuments,
        super(const DocumentsState.initial()) {
    on<DocumentsEvent>(
      (DocumentsEvent event, Emitter<DocumentsState> emit) => event.when(
        get: (String? dateFrom, String? dateUntil, int? project) =>
            _getDocumentsHandler(dateFrom,dateUntil,project,emit),
        getNext: (
          Documents currentDocuments,
          int page,
          String? dateFrom,
          String? dateUntil,
          int? project,
        ) =>
            _getNextDocumentsHandler(currentDocuments,page,dateFrom,dateUntil,project,emit),
      ),
    );
  }

  Future<void> _getDocumentsHandler(
    String? dateFrom,
    String? dateUntil,
    int? project,
    Emitter<DocumentsState> emit,
  ) async {
    emit(DocumentsState.getting(
      documents: Documents(
        items: List<Document>.generate(
          10,
          (int index) => const Document(
            title: 'This is a document title',
            path: '<path>',
          ),
        ),
        total: 10,
      ),
    ),);
    final Either<Failure, Documents> result = await _getDocuments(
      GetDocumentsParams(
        dateFrom: dateFrom,
        dateUntil: dateUntil,
        projectId: project,
      ),
    );

    result.fold(
      (Failure failure) => emit(const DocumentsState.error()),
      (Documents documents) =>
          emit(DocumentsState.loaded(documents: documents)),
    );
  }

  Future<void> _getNextDocumentsHandler(
    Documents currentDocuments,
    int page,
    String? dateFrom,
    String? dateUntil,
    int? project,
    Emitter<DocumentsState> emit,
  ) async {
    final Either<Failure, Documents> result = await _getDocuments(
      GetDocumentsParams(
        page: page,
        dateFrom: dateFrom,
        dateUntil: dateUntil,
        projectId: project,
      ),
    );

    result.fold(
      (Failure failure) {}, //TODO: maybe add something here???
      (Documents documents) => emit(
        DocumentsState.loaded(
          documents: documents.copyWith(
            items: currentDocuments.items + documents.items,
          ),
        ),
      ),
    );
  }

  final GetDocuments _getDocuments;
}
