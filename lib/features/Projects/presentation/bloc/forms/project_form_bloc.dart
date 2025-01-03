part of '../projects_bloc.dart';

enum ProjectFormMode { create, edit, view }

class ProjectFormBloc extends FormBloc<String, String> {
  ProjectFormBloc({
    required this.mode,
    this.project,
    required CreateProject createProject,
    required UpdateProject updateProject,
  })  : _createProject = createProject,
        _updateProject = updateProject {
    if(project != null){
      title.updateInitialValue(project!.title);
      description.updateInitialValue(project!.description);
      if (project!.profilePicture != null) {
        profilePicture.updateExtraData(
          ProfilePicture(
            initial: project!.profilePicture!,
            current: project!.profilePicture!,
          ),
        );
      }
    }


    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        title,
        profilePicture,
        description,
      ],
    );
  }

  final CreateProject _createProject;
  final UpdateProject _updateProject;

  final Project? project;
  final ProjectFormMode mode;


  final TextFieldBloc<dynamic> title = TextFieldBloc<dynamic>(
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


  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, ProjectResponse> result;

    if (mode == ProjectFormMode.create) {
      result = await _createProject(
        CreateProjectParams(
          title: title.value,
          description: description.value,
          profilePicture: profilePicture.value?.path,
        ),
      );
    } else {
      result = await _updateProject(
        project!.id,
        UpdateProjectParams(
          title: title.value,
          description: description.value,
          profilePicture: profilePicture.value?.path,
        ),
      );
    }

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (ProjectResponse response) {
        emitSuccess(successResponse: response.message);
      },
    );
  }
}
