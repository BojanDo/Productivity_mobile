import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/functions/functions.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/notifications_description.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../Notifications/domain/entities/notifications.dart' as notif;
import '../../domain/entities/comments.dart';
import '../bloc/comments/comments_bloc.dart';
import '../bloc/task/task_bloc.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget(
      {super.key, required this.commentFormBloc, required this.comments});

  final CommentFormBloc commentFormBloc;
  final Comments comments;

  @override
  Widget build(BuildContext context) => BlocProvider<CommentsBloc>(
        create: (BuildContext context) {
          return sl<CommentsBloc>(param1: commentFormBloc.taskId);
        },
        child: Builder(
          builder: (BuildContext context) => CommentsWidgetInner(
            commentFormBloc: commentFormBloc,
            comments: comments,
          ),
        ),
      );
}

class CommentsWidgetInner extends StatefulWidget {
  const CommentsWidgetInner({
    super.key,
    required this.commentFormBloc,
    required this.comments,
  });

  final CommentFormBloc commentFormBloc;
  final Comments comments;

  @override
  State<CommentsWidgetInner> createState() => _CommentsWidgetInnerState();
}

class _CommentsWidgetInnerState extends State<CommentsWidgetInner> {
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
      context.read<CommentsBloc>().add(const CommentsEvent.get());
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
  void initState() {
    context.read<CommentsBloc>().add(const CommentsEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CommentsBloc, CommentsState>(
        builder: (BuildContext context, CommentsState state) => Column(
          children: <Widget>[
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
            _comments(state.comments,state),
          ],
        ),
      );

  Widget _form() => FormBlocListener<CommentFormBloc, String, String>(
        onSubmitting: _onSubmitting,
        onSubmissionFailed: _onSubmissionFailed,
        onSuccess: _onSuccess,
        onFailure: _onFailure,
        formBloc: widget.commentFormBloc,
        child: TextFieldBlocBuilder(
          textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
            Theme.of(context).colorScheme.onSecondary,
          ),
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

  Widget _comments(notif.Notifications notifications,CommentsState state) => Skeletonizer(
    enabled: state.maybeMap<bool>(
      getting: (_) => true,
      orElse: () => false,
    ),
    child: Column(
          children: List<Widget>.generate(
            notifications.items.length,
            (int index) => _listItem(notifications.items[index]),
          ),
        ),
  );

  Widget _listItem(notif.Notification notification) => Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          children: <Widget>[
            const Divider(height: 0),
            ListTile(
              leading: SizedBox(
                height: 40,
                width: 40,
                child: ProfilePicture.user(notification.user),
              ),
              dense: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formatDate(notification.date),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  NotificationsDescription(
                    description: notification.description,
                  ),
                ],
              ),
              onTap: () async {},
            ),
            const Divider(height: 0),
          ],
        ),
      );
}
