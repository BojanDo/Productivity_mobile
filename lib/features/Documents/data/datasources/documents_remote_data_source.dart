import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/documents.dart';

abstract class DocumentsRemoteDataSource {
  Future<Documents> getDocuments({
    required Map<String, dynamic> values,
  });
}

class DocumentsRemoteDataSourceImplementation
    implements DocumentsRemoteDataSource {
  const DocumentsRemoteDataSourceImplementation(this._apiManager);

  final APIManager _apiManager;

  @override
  Future<Documents> getDocuments({
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.post(
        kDocumentsUrl,
        '',
        values,
      );

      return Documents.fromJson(
        response as DataMap,
        (Object? item) => Document.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }
}
