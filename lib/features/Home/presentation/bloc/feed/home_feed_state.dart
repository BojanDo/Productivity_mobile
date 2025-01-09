part of 'home_feed_bloc.dart';

@freezed
class HomeFeedState with _$HomeFeedState {
  const factory HomeFeedState.getting() = _HomeFeedStateGetting;
  const factory HomeFeedState.loaded({required Notifications notifications}) = _HomeFeedStateLoaded;
}
