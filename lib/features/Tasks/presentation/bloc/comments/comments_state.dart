part of 'comments_bloc.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.getting({required Notifications comments}) = _CommentsStateGetting;
  const factory CommentsState.loaded({required Notifications comments}) = _CommentsStateLoaded;
}
