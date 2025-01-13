import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../core/utils/typedef.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../User/domain/entities/organizations.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/documents.dart';
import '../../domain/repositories/documents_repo.dart';
import '../datasources/documents_local_data_source.dart';
import '../datasources/documents_remote_data_source.dart';

class DocumentsRepoImplementation implements DocumentsRepository {
  const DocumentsRepoImplementation(
      this._remoteDataSource, this._localDataSource);

  final DocumentsRemoteDataSource _remoteDataSource;
  final DocumentsLocalDataSource _localDataSource;

  @override
  ResultFuture<Documents> getDocuments({
    required Map<String, dynamic> values,
  }) async {
    try {
      final Documents result = await sl<AppBloc>().state.when(
            authenticated: (User user) async =>
                await _remoteDataSource.getDocuments(
              values: values,
            ),
            notAuthenticated: () {
              throw const APIException(
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
            offline: (Organization organization) async =>
                await _localDataSource.getDocuments(organization.id),
          );

      return Right<Failure, Documents>(result);
    } on APIException catch (e) {
      return Left<Failure, Documents>(APIFailure.fromException(e));
    }
  }

  @override
  ResultVoid downloadFile({
    required String url,
    required String filePath,
  }) async {
    try {
      await _remoteDataSource.downloadFile(url: url, filePath: filePath);
      return const Right<Failure, void>(null);
    } on APIException catch (e) {
      return Left<Failure, void>(APIFailure.fromException(e));
    }
  }
}
