part of '../auth_bloc.dart';

class RegisterFormBloc extends FormBloc<User, String> {
  RegisterFormBloc({
    required Register register,
    required ValidateEmail validateEmail,
  })  : _register = register,
        _validateEmail = validateEmail {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        firstname,
        lastname,
        email,
        profilePicture,
        password,
        passwordConfirm,
        jobTitle,
      ],
    );
    email.addAsyncValidators(<AsyncValidator<String>>[_checkEmail]);
    passwordConfirm
      ..addValidators(<Validator<String>>[_confirmPassword(password)])
      ..subscribeToFieldBlocs(<FieldBloc<FieldBlocStateBase>>[password]);
  }

  final Register _register;
  final ValidateEmail _validateEmail;
  final TextFieldBloc<dynamic> firstname = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );
  final TextFieldBloc<dynamic> lastname = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );
  final TextFieldBloc<dynamic> email = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
    asyncValidatorDebounceTime: const Duration(seconds: 2),
  );

  Future<String?> _checkEmail(String? email) async {
    final Either<Failure, bool> result = await _validateEmail(
      ValidateEmailParams(email: email ?? ''),
    );

    return result.fold(
          (Failure failure) => null,
          (bool isValid) {
            if (!isValid) {
              return 'Email doesn\'t have a valid format';
            }
            return null;
          },
    );
  }

  final InputFieldBloc<File?, ProfilePicture> profilePicture =
      InputFieldBloc<File?, ProfilePicture>(initialValue: null);

  final TextFieldBloc<dynamic> password = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
      FieldBlocValidators.passwordMin6Chars,
    ],
  );
  final TextFieldBloc<dynamic> passwordConfirm = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
      FieldBlocValidators.passwordMin6Chars,
    ],
  );
  final TextFieldBloc<dynamic> jobTitle = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );

  Validator<String> _confirmPassword(
          TextFieldBloc<dynamic> passwordTextFieldBloc) =>
      (String? confirmPassword) {
        if (confirmPassword == passwordTextFieldBloc.value) {
          return null;
        }
        return 'Must be equal to password';
      };

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, AuthResponse> result = await _register(
      RegisterParams(
        firstname: firstname.value,
        lastname: lastname.value,
        email: email.value,
        profilePicture: profilePicture.value?.path,
        password: password.value,
        passwordConfirm: passwordConfirm.value,
        jobTitle: jobTitle.value,
      ),
    );

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (AuthResponse response) => emitSuccess(),
    );
  }
}
