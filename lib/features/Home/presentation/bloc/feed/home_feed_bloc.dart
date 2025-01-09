import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../../Notifications/domain/entities/notifications.dart';
import '../../../../Notifications/domain/usecases/get_notifications.dart';

part 'home_feed_event.dart';

part 'home_feed_state.dart';

part 'generated/home_feed_bloc.freezed.dart';

class HomeFeedBloc extends Bloc<HomeFeedEvent, HomeFeedState> {
  HomeFeedBloc(GetNotifications getNotifications)
      : _getNotifications = getNotifications,
        super(const HomeFeedState.getting()) {
    on<HomeFeedEvent>(
      (HomeFeedEvent event, Emitter<HomeFeedState> emit) => event.when(
        get: () async {
          final Either<Failure, Notifications> result =
              await _getNotifications(const GetNotificationsParams(page: 1));

          result.fold(
            (Failure failure) {
              sl<AppBloc>().add(
                const AppEvent.error(
                  message: 'Error getting the notifications',
                ),
              );
              emit(
                const HomeFeedState.loaded(
                  notifications:
                      Notifications(items: <Notification>[], total: 0),
                ),
              );
            },
            (Notifications notifications) =>
                emit(HomeFeedState.loaded(notifications: notifications)),
          );
          return null;
        },
      ),
    );
  }

  final GetNotifications _getNotifications;
}
