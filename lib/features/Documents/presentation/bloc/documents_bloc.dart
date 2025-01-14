import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/injection_container.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/documents.dart';
import '../../domain/usecases/download_file.dart';
import '../../domain/usecases/get_documents.dart';

part 'documents_event.dart';

part 'documents_state.dart';

part 'generated/documents_bloc.freezed.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  DocumentsBloc({
    required GetDocuments getDocuments,
    required DownloadFile downloadFile,
  })  : _getDocuments = getDocuments,
        _downloadFile = downloadFile,
        super(
          DocumentsState.getting(
            documents: Documents(
              items: List<Document>.generate(
                10,
                (int index) => const Document(
                  id: 0,
                  title: 'This is a document title',
                  path: '<path>',
                ),
              ),
              total: 10,
            ),
          ),
        ) {
    on<DocumentsEvent>(
      (DocumentsEvent event, Emitter<DocumentsState> emit) => event.when(
        get: (String? dateFrom, String? dateUntil, int? project) =>
            _getDocumentsHandler(dateFrom, dateUntil, project, emit),
        getNext: (
          Documents currentDocuments,
          int page,
          String? dateFrom,
          String? dateUntil,
          int? project,
        ) =>
            _getNextDocumentsHandler(
          currentDocuments,
          page,
          dateFrom,
          dateUntil,
          project,
          emit,
        ),
        downloadFile: (Document document) =>
            _downloadFileHandler(document, emit),
      ),
    );
  }

  Future<void> _getDocumentsHandler(
    String? dateFrom,
    String? dateUntil,
    int? project,
    Emitter<DocumentsState> emit,
  ) async {
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
          emit(DocumentsState.loaded(documents: documents, page: 1)),
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
          page: page,
        ),
      ),
    );
  }

  final String _fileError = 'Error opening the file';

  Future<void> _downloadFileHandler(
    Document document,
    Emitter<DocumentsState> emit,
  ) async {
    await sl<AppBloc>().state.maybeWhen(
      authenticated: (_) async {
        final Directory tempDir = await getTemporaryDirectory();
        final String lastPart = Uri.parse(document.path).pathSegments.last;
        final String filePath = '${tempDir.path}/$lastPart';

        final Either<Failure, void> result = await _downloadFile(
          DownloadFileParams(url: document.path, filePath: filePath),
        );

        result.fold(
          (Failure failure) =>
              sl<AppBloc>().add(AppEvent.error(message: failure.message)),
          (_) async {
            openFile(filePath);
          },
        );
      },
      orElse: () {
        openFile(document.path);
      },
    );
  }

  void openFile(String filePath) async{
    try {
      final OpenResult result = await OpenFilex.open(filePath);
      if (result.type != ResultType.done) {
        throw 'Error';
      }
    } catch (e) {
      sl<AppBloc>().add(AppEvent.error(message: _fileError));
    }
  }

  final GetDocuments _getDocuments;
  final DownloadFile _downloadFile;
}
