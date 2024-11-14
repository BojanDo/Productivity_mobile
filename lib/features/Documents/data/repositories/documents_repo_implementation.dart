import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/documents.dart';
import '../../domain/repositories/documents_repo.dart';
import '../datasources/documents_remote_data_source.dart';
class DocumentsRepoImplementation implements DocumentsRepository {
  const DocumentsRepoImplementation(this._remoteDataSource);

  final DocumentsRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<Documents> getDocuments({
    required Map<String, dynamic> values,
  }) async {
    try {
      final Documents result = await _remoteDataSource.getDocuments(
        values: values,
      );
      return Right<Failure, Documents>(result);
    } on APIException catch (e) {
      return Left<Failure, Documents>(APIFailure.fromException(e));
    }
  }
}
