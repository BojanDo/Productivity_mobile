import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/user_response.dart';
import '../repositories/user_repo.dart';

class SendInvitation extends UsecaseIdWithoutParams<UserResponse> {
  const SendInvitation(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<UserResponse> call(String id) async => _repository.sendInvitation(id);
}

