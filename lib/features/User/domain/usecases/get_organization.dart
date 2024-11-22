import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/organizations.dart';
import '../repositories/user_repo.dart';

class GetOrganization extends UsecaseIdWithoutParams<Organization> {
  const GetOrganization(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<Organization> call(int id) async => _repository.getOrganization(id);
}

