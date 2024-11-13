import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/organizations.dart';
import '../repositories/user_repo.dart';

class GetInvitations extends UsecaseWithoutParams<Organizations> {
  const GetInvitations(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<Organizations> call() async => _repository.getInvitations();
}

