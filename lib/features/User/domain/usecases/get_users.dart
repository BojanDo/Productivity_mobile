import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/users.dart';
import '../repositories/user_repo.dart';

class GetUsers extends UsecaseWithoutParams<Users> {
  const GetUsers(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<Users> call() async => _repository.getUsers();
}

