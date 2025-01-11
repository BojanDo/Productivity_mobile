part of '../task/task_bloc.dart';

class CommentFormBloc extends FormBloc<String, String> {
  CommentFormBloc({
    required this.taskId,
    required AddComment addComment,
  }) : _addComment = addComment {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        description,
      ],
    );
  }

  final int taskId;
  final AddComment _addComment;

  final TextFieldBloc<dynamic> description = TextFieldBloc<dynamic>(
    validators: <Validator<String>>[
      FieldBlocValidators.required,
    ],
  );

  @override
  FutureOr<void> onSubmitting() async {
    final Either<Failure, TaskResponse> result = await _addComment(
      AddCommentParams(description: description.value, taskId: taskId),
    );

    result.fold(
      (Failure failure) => emitFailure(failureResponse: failure.message),
      (TaskResponse response) {
        description.clear();
        emitSuccess(successResponse: response.message);
      },
    );
  }
}
