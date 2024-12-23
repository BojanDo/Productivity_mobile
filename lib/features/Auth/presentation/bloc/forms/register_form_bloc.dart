part of '../auth_bloc.dart';

class RegisterFormBloc extends FormBloc<User, String> {
  RegisterFormBloc({
    required Register register,
  }) : _register = register {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        firstname,
        lastname,
        email,
        profilePicture,
        password,
        jobTitle,
      ],
    );
  }

  final Register _register;
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
      FieldBlocValidators.email,
    ],
  );
  final InputFieldBloc<File?, ProfilePicture> profilePicture =
      InputFieldBloc<File?, ProfilePicture>(initialValue: null);

  final TextFieldBloc<dynamic> password = TextFieldBloc<dynamic>(
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

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, AuthResponse> result = await _register(
      RegisterParams(
        firstname: firstname.value,
        lastname: lastname.value,
        email: email.value,
        profilePicture: profilePicture.value?.path,
        password: password.value,
        jobTitle: jobTitle.value,
      ),
    );

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (AuthResponse response) => emitSuccess(),
    );
  }
}
