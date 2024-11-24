part of '../auth_bloc.dart';

class LoginFormBloc extends FormBloc<User, String> {
  LoginFormBloc({
    required Login login,
    required LocalDataManager localStorage,
  }) : _login = login,
        _localStorage = localStorage{
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        email,
        password,
      ],
    );
  }

  final Login _login;
  final LocalDataManager _localStorage;

  final TextFieldBloc<dynamic> email = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  final TextFieldBloc<dynamic> password = TextFieldBloc<dynamic>(
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
      (AuthResponse response) {
        _localStorage.saveData('user_id', response.user!.id, true);
        emitSuccess(successResponse: response.user);
      },
    );
  }
}
