part of '../user_bloc.dart';

enum OrganizationFormMode { create, edit, view }

class OrganizationFormBloc extends FormBloc<String, String> {
  OrganizationFormBloc({
    required CreateOrganization createOrganization,
    required UpdateOrganization updateOrganization,
  })  : _createOrganization = createOrganization,
        _updateOrganization = updateOrganization {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        name,
        profilePicture,
        description,
      ],
    );
  }

  final CreateOrganization _createOrganization;
  final UpdateOrganization _updateOrganization;

  final InputFieldBloc<int?, dynamic> id = InputFieldBloc<int?, dynamic>(
    initialValue: null,
  );
  final InputFieldBloc<Organization?, dynamic> organization =
      InputFieldBloc<Organization?, dynamic>(
    initialValue: null,
  );

  final InputFieldBloc<OrganizationFormMode, dynamic> mode =
      InputFieldBloc<OrganizationFormMode, dynamic>(
    initialValue: OrganizationFormMode.create,
  );

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

  bool isViewMode() => mode.value == OrganizationFormMode.view;

  void resetFields() {
    mode.updateValue(OrganizationFormMode.create);
    organization.updateValue(null);
    id.updateValue(null);
    name.updateInitialValue('');
    description.updateInitialValue('');
    profilePicture.updateExtraData(null);
  }

  void setFields(Organization organization, Role userRole) {
    mode.updateValue(
      userRole == Role.developer
          ? OrganizationFormMode.view
          : OrganizationFormMode.edit,
    );
    this.organization.updateValue(organization);
    id.updateValue(organization.id);
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

  void initialize(Organization? organization, OrganizationFormMode mode) {
    resetFields();
    this.mode.updateValue(mode);
    if (mode != OrganizationFormMode.create) {
      this.organization.updateValue(organization);
      id.updateValue(organization!.id);
      name.updateValue(organization.name);
      description.updateValue(organization.description);
    }
  }

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, UserResponse> result;

    if (mode.value == OrganizationFormMode.create) {
      result = await _createOrganization(
        CreateOrganizationParams(
          name: name.value,
          description: description.value,
          profilePicture: profilePicture.value?.path,
        ),
      );
    } else {
      result = await _updateOrganization(
        id.value!,
        UpdateOrganizationParams(
          name: name.value,
          description: description.value,
          profilePicture: profilePicture.value?.path,
          deletePicture: profilePicture.state.extraData != null &&
              profilePicture.state.extraData!.current == null &&
              profilePicture.value?.path == null,
        ),
      );
    }

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (UserResponse response) {
        emitSuccess(successResponse: response.message);
      },
    );
  }
}
