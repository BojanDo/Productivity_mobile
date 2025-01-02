import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/user_response.dart';
import '../repositories/user_repo.dart';

part 'generated/send_invitation.freezed.dart';
part 'generated/send_invitation.g.dart';

class SendInvitation
    extends UsecaseIdWithParams<UserResponse, SendInvitationParams> {
  const SendInvitation(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<UserResponse> call(int id, SendInvitationParams params) async =>
      _repository.sendInvitation(id,values: params.toJson());
}

@freezed
class SendInvitationParams with _$SendInvitationParams {
  const factory SendInvitationParams({
    required String email,
  }) = _SendInvitationParams;

  factory SendInvitationParams.fromJson(Map<String, dynamic> json) =>
      _$SendInvitationParamsFromJson(json);
}
