part of '../user_bloc.dart';

class AccountFormBloc extends FormBloc<String, String> {
  AccountFormBloc({
    required UpdateUser updateUser,
  }) : _updateUser = updateUser {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        firstname,
        lastname,
        profilePicture,
        jobTitle,
      ],
    );
  }

  final UpdateUser _updateUser;

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
  final InputFieldBloc<File?, ProfilePicture> profilePicture =
      InputFieldBloc<File?, ProfilePicture>(
    initialValue: null,
  );

  final TextFieldBloc<dynamic> jobTitle = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );
  late int id;

  void setFields(User user) {
    id = user.id;
    firstname.updateInitialValue(user.firstname);
    lastname.updateInitialValue(user.lastname);
    jobTitle.updateInitialValue(user.jobTitle);
    if (user.profilePicture != null) {
      profilePicture.updateExtraData(
        ProfilePicture(
          initial: user.profilePicture!,
          current: user.profilePicture!,
        ),
      );
    }
  }

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, UserResponse> result = await _updateUser(
      id,
      UpdateUserParams(
        firstname: firstname.value,
        lastname: lastname.value,
        jobTitle: jobTitle.value,
        profilePicture: profilePicture.value?.path,
        deletePicture: profilePicture.state.extraData!.current == null &&
            profilePicture.value?.path == null,
      ),
    );

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (UserResponse response) {
        emitSuccess(successResponse: response.message);
      },
    );
  }
}
