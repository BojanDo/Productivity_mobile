part of '../task/task_bloc.dart';

enum TaskFormMode { create, edit }

class AttachmentManager {
  List<Document> existing; // Existing documents
  List<File> added; // Newly added files
  List<int> deleted; // IDs of deleted existing documents

  AttachmentManager({
    required this.existing,
    required this.added,
    required this.deleted,
  });

  void setExisting(List<Document> documents){
    existing.addAll(documents);
  }

  void addFile(File file) {
    added.add(file);
  }

  void removeFile(File file) {
    added.remove(file);
  }

  void deleteExistingDocument(int documentId) {
    deleted.add(documentId);
  }
}

class TaskFormBloc extends FormBloc<String, String> {
  TaskFormBloc({
    required this.mode,
    this.task,
    required this.projectId,
    required this.users,
    required CreateTask createTask,
    required UpdateTask updateTask,
  })  : _createTask = createTask,
        _updateTask = updateTask {
    if (task != null) {
      title.updateInitialValue(task!.title);
      description.updateInitialValue(
        quill.QuillController(
          document: quill.Document.fromJson(task!.description),
          selection: const TextSelection.collapsed(offset: 0),
        ),
      );
      status.updateInitialValue(task!.status);
      label.updateInitialValue(task!.label.displayName);
      date.updateInitialValue(DateTime.tryParse(task!.date));
      assigned.updateInitialValue(task!.users.items);
      attachments.value.setExisting(task!.documents.items);
    }

    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        title,
        description,
        status,
        label,
        date,
        assigned,
        attachments,
      ],
    );
  }

  final CreateTask _createTask;
  final UpdateTask _updateTask;

  final Task? task;
  final int projectId;
  final Users users;
  final TaskFormMode mode;

  final TextFieldBloc<dynamic> title = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );
  final InputFieldBloc<quill.QuillController, dynamic> description =
      InputFieldBloc<quill.QuillController, dynamic>(
    initialValue: quill.QuillController.basic(),
    validators: <Validator<quill.QuillController>>[
      FieldBlocValidators.required,
    ],
  );

  final SelectFieldBloc<Status, dynamic> status =
      SelectFieldBloc<Status, dynamic>(
    items: Status.values,
    validators: <Validator<Status?>>[
      FieldBlocValidators.required,
    ],
  );

  final SelectFieldBloc<String, dynamic> label =
      SelectFieldBloc<String, dynamic>(
    items: Label.values.map((Label el) => el.displayName).toList(),
    validators: <Validator<String?>>[
      FieldBlocValidators.required,
    ],
  );

  final InputFieldBloc<DateTime?, dynamic> date =
      InputFieldBloc<DateTime?, dynamic>(
    initialValue: null,
    validators: <Validator<DateTime?>>[
      FieldBlocValidators.required,
    ],
  );

  final MultiSelectFieldBloc<User, dynamic> assigned =
      MultiSelectFieldBloc<User, dynamic>();

  final InputFieldBloc<AttachmentManager, dynamic> attachments =
      InputFieldBloc<AttachmentManager, dynamic>(
    initialValue: AttachmentManager(
      existing: <Document>[],
      added: <File>[],
      deleted: <int>[],
    ),
  );

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, TaskResponse> result;

    if (mode == TaskFormMode.create) {
      result = await _createTask(
        CreateTaskParams(
          title: title.value,
          description: description.value.document.toDelta().toJson(),
          status: status.value?.displayName ?? '',
          label: label.value ?? '',
          date: date.value?.toIso8601String() ?? '',
          assigned: assigned.value.map((User el) => el.id).toList(),
          attachments:
              attachments.value.added.map((File el) => el.path).toList(),
          projectId: projectId,
        ),
      );
    } else {
      result = await _updateTask(
        task!.id,
        UpdateTaskParams(
          title: title.value,
          description: description.value.document.toDelta().toJson(),
          status: status.value?.displayName ?? '',
          label: label.value ?? '',
          date: date.value?.toIso8601String() ?? '',
          assigned: assigned.value.map((User el) => el.id).toList(),
          attachments:
              attachments.value.added.map((File el) => el.path).toList(),
          deletedAttachments: attachments.value.deleted,
          projectId: projectId,
          taskNumber: task!.taskNumber,
        ),
      );
    }

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (TaskResponse response) {
        emitSuccess(successResponse: response.message);
      },
    );
  }
}
