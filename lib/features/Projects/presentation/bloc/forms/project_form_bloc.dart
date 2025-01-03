part of '../projects_bloc.dart';
/*
enum ProjectFormMode { create, edit, view }

class ProjectFormBloc extends FormBloc<String, String> {
  ProjectFormBloc({
    this.project,
    required CreateProject createProject,
    required UpdateProject updateProject,
  })  : _createProject = createProject,
        _updateProject = updateProject {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        name,
        profilePicture,
        description,
      ],
    );
  }

  final CreateProject _createProject;
  final UpdateProject _updateProject;

  final Project? project;

  final InputFieldBloc<ProjectFormMode, dynamic> mode =
      InputFieldBloc<ProjectFormMode, dynamic>(
    initialValue: ProjectFormMode.create,
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

  bool isViewMode() => mode.value == ProjectFormMode.view;

  void resetFields() {
    mode.updateValue(ProjectFormMode.create);
    id.updateValue(null);
    name.updateInitialValue('');
    description.updateInitialValue('');
    profilePicture.updateExtraData(null);
  }

  void setFields(Project organization, Role userRole) {
    mode.updateValue(userRole == Role.developer
        ? ProjectFormMode.view
        : ProjectFormMode.edit);
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

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, UserResponse> result;

    if (mode.value == ProjectFormMode.create) {
      result = await _createProject(
        CreateProjectParams(
          name: name.value,
          description: description.value,
          profilePicture: profilePicture.value?.path,
        ),
      );
    } else {
      result = await _updateProject(
        id.value!,
        UpdateProjectParams(
          name: name.value,
          description: description.value,
          profilePicture: profilePicture.value?.path,
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
*/