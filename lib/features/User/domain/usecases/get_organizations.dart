import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/organizations.dart';
import '../entities/users.dart';
import '../repositories/user_repo.dart';

class GetOrganizations extends UsecaseWithoutParams<Organizations> {
  const GetOrganizations(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<Organizations> call() async => _repository.getOrganizations();
}

