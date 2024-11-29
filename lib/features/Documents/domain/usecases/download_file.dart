import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/documents.dart';
import '../repositories/documents_repo.dart';

part 'generated/download_file.freezed.dart';

class DownloadFile extends UsecaseWithParams<void, DownloadFileParams> {
  const DownloadFile(this._repository);

  final DocumentsRepository _repository;

  @override
  ResultVoid call(DownloadFileParams params) async => _repository.downloadFile(
        url: params.url,
        filePath: params.filePath,
      );
}

@freezed
class DownloadFileParams with _$DownloadFileParams {
  const factory DownloadFileParams({
    required String url,
    required String filePath,
  }) = _DownloadFileParams;
}
