import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/user_response.dart';
import '../repositories/user_repo.dart';

class DeclineInvitation extends UsecaseIdWithoutParams<UserResponse> {
  const DeclineInvitation(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<UserResponse> call(String id) async => _repository.declineInvitation(id);
}

