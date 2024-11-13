import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/users.dart';
import '../repositories/user_repo.dart';

class GetUser extends UsecaseIdWithoutParams<User> {
  const GetUser(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<User> call(String id) async => _repository.getUser(id);
}

