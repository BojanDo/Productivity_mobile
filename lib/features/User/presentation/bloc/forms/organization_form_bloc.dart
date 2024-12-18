part of '../user_bloc.dart';

class OrganizationFormBloc extends FormBloc<String, String> {
  OrganizationFormBloc({
    required CreateOrganization createOrganization,
  }) : _createOrganization = createOrganization {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        name,
        profilePicture,
        description,
      ],
    );
  }

  final CreateOrganization _createOrganization;

  final TextFieldBloc<dynamic> name = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );
  final TextFieldBloc<dynamic> description = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );
  final InputFieldBloc<File?, ProfilePicture> profilePicture =
      InputFieldBloc<File?, ProfilePicture>(
    initialValue: null,
  );

  void setFields(Organization organization) {
    name.updateInitialValue(organization.name);
    description.updateInitialValue(organization.description);
    if (organization.profilePicture != null) {
      profilePicture.updateExtraData(
        ProfilePicture(
          initial: organization.profilePicture!,
          current: organization.profilePicture!,
        ),
      );
    }
  }

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, UserResponse> result = await _createOrganization(
      CreateOrganizationParams(
        name: name.value,
        description: description.value,
        profilePicture: profilePicture.value?.path,
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
