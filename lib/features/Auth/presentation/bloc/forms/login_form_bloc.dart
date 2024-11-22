part of '../auth_bloc.dart';

class LoginFormBloc extends FormBloc<String, String> {
  LoginFormBloc({
    required Login login,
  }) : _login = login {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        email,
        password,
      ],
    );
  }

  final Login _login;

  final TextFieldBloc<dynamic> email = TextFieldBloc(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
      FieldBlocValidators.email
    ],
  );

  final TextFieldBloc<dynamic> password = TextFieldBloc(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, AuthResponse> result = await _login(
      LoginParams(
        email: email.value,
        password: password.value,
      ),
    );

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (AuthResponse response) => emitSuccess(),
    );
  }
}
