import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/sql_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/documents.dart';

abstract class DocumentsLocalDataSource {
  Future<Documents> getDocuments(int organizationId);

  Future<void> downloadFile({
    required String url,
    required String filePath,
  });
}

class DocumentsLocalDataSourceImplementation
    implements DocumentsLocalDataSource {
  const DocumentsLocalDataSourceImplementation(this._sqlManager);

  final SQLManager _sqlManager;

  @override
  Future<Documents> getDocuments(int organizationId) async {
    try {
      final List<Map<String, dynamic>> result =
      await _sqlManager.getData(
        kDocumentsTable,
        where: <String, dynamic>{'organizationId': organizationId},
      );
      final DataMap response = <String, dynamic>{
        'items': result,
        'total': result.length,
      };
      return Documents.fromJson(
        response,
            (Object? item) => Document.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<void> downloadFile({
    required String url,
    required String filePath,
  }) async {}
}
