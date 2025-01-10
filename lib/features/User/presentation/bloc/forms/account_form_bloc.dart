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
    try {
      print('onSubmitting triggered');
      final params = UpdateUserParams(
        firstname: firstname.value,
        lastname: lastname.value,
        jobTitle: jobTitle.value,
        profilePicture: profilePicture.value?.path,
        deletePicture: profilePicture.state.extraData != null &&
            profilePicture.state.extraData!.current == null &&
            profilePicture.value?.path == null,
      );
      print('Params created');
      final Either<Failure, UserResponse> result = await _updateUser(
        id,
        params,
      );
      print('Finished submitting updateUser');
      result.fold(
        (Failure failure) => emitFailure(failureResponse: failure.message),
        (UserResponse response) =>
            emitSuccess(successResponse: response.message),
      );
    } catch (e, stackTrace) {
      print('Error in onSubmitting: $e');
      print(stackTrace);
      emitFailure(failureResponse: e.toString());
    }
  }
}
