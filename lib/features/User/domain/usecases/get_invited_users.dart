import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/users.dart';
import '../repositories/user_repo.dart';

class GetInvitedUsers extends UsecaseIdWithoutParams<Users> {
  const GetInvitedUsers(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<Users> call(int id) async => _repository.getInvitedUsers(id);
}

