part of '../user_bloc.dart';

class InviteUsersFormBloc extends FormBloc<String, String> {
  InviteUsersFormBloc({
    this.organizationId,
    required SendInvitation sendInvitation,
  }) : _sendInvitation = sendInvitation {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        email,
      ],
    );
  }

  final int? organizationId;
  final SendInvitation _sendInvitation;

  final TextFieldBloc<dynamic> email = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, UserResponse> result = await _sendInvitation(
      organizationId!,
      SendInvitationParams(email: email.value),
    );

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (UserResponse response) {
        email.updateValue('');
        emitSuccess(successResponse: response.message);
      },
    );
  }
}
