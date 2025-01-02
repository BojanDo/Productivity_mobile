import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/user_response.dart';
import '../../domain/entities/users.dart';
import '../../domain/repositories/user_repo.dart';
import '../datasources/user_remote_data_source.dart';

class UserRepoImplementation implements UserRepository {
  const UserRepoImplementation(this._remoteDataSource);

  final UserRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<Users> getUsers() async {
    try {
      final Users result = await _remoteDataSource.getUsers();
      return Right<Failure, Users>(result);
    } on APIException catch (e) {
      return Left<Failure, Users>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<User> getUser(int id) async {
    try {
      final User result = await _remoteDataSource.getUser(id);
      return Right<Failure, User>(result);
    } on APIException catch (e) {
      return Left<Failure, User>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<UserResponse> updateUser(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final UserResponse result = await _remoteDataSource.updateUser(
        id,
        values: values,
      );
      return Right<Failure, UserResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, UserResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  }) async {
    try {
      final UserResponse result = await _remoteDataSource.createOrganization(
        values: values,
      );
      return Right<Failure, UserResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, UserResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<Organization> getOrganization(int id) async {
    try {
      final Organization result = await _remoteDataSource.getOrganization(id);
      return Right<Failure, Organization>(result);
    } on APIException catch (e) {
      return Left<Failure, Organization>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<UserResponse> updateOrganization(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final UserResponse result = await _remoteDataSource.updateOrganization(
        id,
        values: values,
      );
      return Right<Failure, UserResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, UserResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<Organizations> getInvitations() async {
    try {
      final Organizations result = await _remoteDataSource.getInvitations();
      return Right<Failure, Organizations>(result);
    } on APIException catch (e) {
      return Left<Failure, Organizations>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<Users> getInvitedUsers(int organizationId) async {
    try {
      final Users result = await _remoteDataSource.getInvitedUsers(
        organizationId,
      );
      return Right<Failure, Users>(result);
    } on APIException catch (e) {
      return Left<Failure, Users>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<UserResponse> acceptInvitation(int organizationId) async {
    try {
      final UserResponse result = await _remoteDataSource.acceptInvitation(
        organizationId,
      );
      return Right<Failure, UserResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, UserResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<UserResponse> sendInvitation(
    int organizationId, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final UserResponse result = await _remoteDataSource.sendInvitation(
        organizationId,
        values: values
      );
      return Right<Failure, UserResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, UserResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<UserResponse> declineInvitation(int organizationId) async {
    try {
      final UserResponse result = await _remoteDataSource.declineInvitation(
        organizationId,
      );
      return Right<Failure, UserResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, UserResponse>(APIFailure.fromException(e));
    }
  }
}
