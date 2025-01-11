import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/errors/failure.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/notifications.dart';
import '../../domain/usecases/get_notifications.dart';

part 'notifications_event.dart';

part 'notifications_state.dart';

part 'generated/notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc({required GetNotifications getNotifications})
      : _getNotifications = getNotifications,
        super(
          NotificationsState.getting(
            notifications: Notifications(
              items: List<Notification>.generate(
                10,
                (int index) => const Notification(
                  user: User(
                    id: 0,
                    firstname: 'Firstname',
                    lastname: 'Lastname',
                    email: 'test@test.com',
                    jobTitle: 'Developer',
                  ),
                  taskId: 0,
                  description:
                      'User Name updated #3<br/>something something<br/>something more<br/>something something',
                  date: '2025-01-01',
                ),
              ),
              total: 10,
            ),
          ),
        ) {
    on<NotificationsEvent>(
      (NotificationsEvent event, Emitter<NotificationsState> emit) =>
          event.when(
        get: (String? dateFrom, String? dateUntil, int? project) =>
            _getNotificationsHandler(dateFrom, dateUntil, project, emit),
        getNext: (
          Notifications currentNotifications,
          int page,
          String? dateFrom,
          String? dateUntil,
          int? project,
        ) =>
            _getNextNotificationsHandler(
          currentNotifications,
          page,
          dateFrom,
          dateUntil,
          project,
          emit,
        ),
      ),
    );
  }

  Future<void> _getNotificationsHandler(
    String? dateFrom,
    String? dateUntil,
    int? project,
    Emitter<NotificationsState> emit,
  ) async {
    final Either<Failure, Notifications> result = await _getNotifications(
      GetNotificationsParams(
        dateFrom: dateFrom,
        dateUntil: dateUntil,
        projectId: project,
      ),
    );

    result.fold(
      (Failure failure) => emit(const NotificationsState.error()),
      (Notifications notifications) => emit(
          NotificationsState.loaded(notifications: notifications, page: 1)),
    );
  }

  Future<void> _getNextNotificationsHandler(
    Notifications currentNotifications,
    int page,
    String? dateFrom,
    String? dateUntil,
    int? project,
    Emitter<NotificationsState> emit,
  ) async {
    final Either<Failure, Notifications> result = await _getNotifications(
      GetNotificationsParams(
        page: page,
        dateFrom: dateFrom,
        dateUntil: dateUntil,
        projectId: project,
      ),
    );

    result.fold(
      (Failure failure) {}, //TODO: maybe add something here???
      (Notifications notifications) => emit(
        NotificationsState.loaded(
          notifications: notifications.copyWith(
            items: currentNotifications.items + notifications.items,
          ),
          page: page,
        ),
      ),
    );
  }

  final GetNotifications _getNotifications;
}
