import '../../../../core/utils/typedef.dart';
import '../entities/documents.dart';

abstract class DocumentsRepository {
  const DocumentsRepository();

  ResultFuture<Documents> getDocuments({
    required Map<String, dynamic> values,
  });
}
