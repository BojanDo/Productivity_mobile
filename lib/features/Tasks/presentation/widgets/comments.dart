import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/comments.dart';
import '../bloc/task/task_bloc.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({
    super.key,
    required this.commentFormBloc,
    required this.comments,
  });

  final CommentFormBloc commentFormBloc;
  final Comments comments;

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  void _onSubmitting(
    BuildContext context,
    FormBlocSubmitting<String, String> state,
  ) {
    context.read<AppBloc>().add(const AppEvent.overlayAdd());
  }

  void _onSubmissionFailed(
    BuildContext context,
    FormBlocSubmissionFailed<String, String> state,
  ) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
  }

  void _onSuccess(BuildContext context, FormBlocSuccess<String, String> state) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
    if (state.hasSuccessResponse) {
      context
          .read<AppBloc>()
          .add(AppEvent.success(message: state.successResponse!));
    }
  }

  void _onFailure(BuildContext context, FormBlocFailure<String, String> state) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
    if (state.hasFailureResponse) {
      context
          .read<AppBloc>()
          .add(AppEvent.error(message: state.failureResponse!));
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          _form(),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: widget.commentFormBloc.submit,
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.only(),
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.disabled)) {
                        return kPrimaryColor.withOpacity(0.4);
                      }
                      return kPrimaryColor;
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) => Colors.white,
                    ),
                  ),
              child: const Text(
                'Send',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          _comments(),
        ],
      );

  Widget _form() => FormBlocListener<CommentFormBloc, String, String>(
        onSubmitting: _onSubmitting,
        onSubmissionFailed: _onSubmissionFailed,
        onSuccess: _onSuccess,
        onFailure: _onFailure,
        formBloc: widget.commentFormBloc,
        child: TextFieldBlocBuilder(
          minLines: 1,
          maxLines: 100,
          textFieldBloc: widget.commentFormBloc.description,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: 'Write a comment',
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
      );

  Widget _comments() => const SizedBox.shrink();
}
