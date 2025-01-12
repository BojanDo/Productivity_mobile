import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../../Notifications/domain/entities/notifications.dart';
import '../../../../User/domain/entities/users.dart';
import '../../../domain/usecases/get_comments.dart';

part 'comments_event.dart';

part 'comments_state.dart';

part 'generated/comments_bloc.freezed.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc(this.taskId, GetComments getComments)
      : _getComments = getComments,
        super(
          CommentsState.getting(
            comments: CommentsBloc.mock,
          ),
        ) {
    on<CommentsEvent>(
      (CommentsEvent event, Emitter<CommentsState> emit) => event.when(
        get: () async {
          emit(CommentsState.getting(comments: CommentsBloc.mock));

          final Either<Failure, Notifications> result =
              await _getComments(taskId);

          result.fold(
            (Failure failure) {
              sl<AppBloc>().add(
                const AppEvent.error(
                  message: 'Error getting the notifications',
                ),
              );
              emit(
                const CommentsState.loaded(
                  comments: Notifications(items: <Notification>[], total: 0),
                ),
              );
            },
            (Notifications comments) =>
                emit(CommentsState.loaded(comments: comments)),
          );
          return null;
        },
      ),
    );
  }

  static Notifications get mock => Notifications(
        items: List<Notification>.generate(
          10,
          (int index) => const Notification(
            user: User(
              id: 0,
              firstname: 'Firstname',
              lastname: 'Lastname',
              email: 'email@email.com',
              jobTitle: 'Developer',
            ),
            taskId: 0,
            description: 'The user did something to the task',
            date: '2025-01-01',
          ),
        ),
        total: 10,
      );

  final int taskId;
  final GetComments _getComments;
}
