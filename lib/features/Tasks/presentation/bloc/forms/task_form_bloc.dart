part of '../../tasks/tasks_bloc.dart';
/*
enum ProjectFormMode { create, edit, view }

class ProjectFormBloc extends FormBloc<String, String> {
  ProjectFormBloc({
    required this.mode,
    this.project,
    required CreateTask createTask,
    required UpdateTask updateTask,
  })  : _createTask = createTask,
        _updateTask = updateTask {
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

  final CreateTask _createTask;
  final UpdateTask _updateTask;

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
      result = await _createTask(
        CreateTaskParams(
          title: title.value,
          description: description.value,
          profilePicture: profilePicture.value?.path,
        ),
      );
    } else {
      result = await _updateTask(
        project!.id,
        UpdateTaskParams(
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
*/