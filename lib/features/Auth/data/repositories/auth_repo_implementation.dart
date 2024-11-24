import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/auth_response.dart';
import '../../domain/repositories/auth_repo.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepoImplementation implements AuthRepository {
  const AuthRepoImplementation(this._remoteDataSource);

  final AuthRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<AuthResponse> login({
    required Map<String, dynamic> values,
  }) async {
    try {
      final AuthResponse result = await _remoteDataSource.login(
        values: values,
      );
      if (result.user == null || result.jwt==null) {
        throw const APIException(
          message: 'There was an unknown error processing your data',
          statusCode: 500,
        );
      }
      return Right<Failure, AuthResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, AuthResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<AuthResponse> register({
    required Map<String, dynamic> values,
  }) async {
    try {
      final AuthResponse result = await _remoteDataSource.login(
        values: values,
      );
      return Right<Failure, AuthResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, AuthResponse>(APIFailure.fromException(e));
    }
  }
}
