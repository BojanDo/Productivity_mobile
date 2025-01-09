part of 'home_projects_bloc.dart';

@freezed
class HomeProjectsState with _$HomeProjectsState {
  const factory HomeProjectsState.getting() = _HomeProjectsStateGetting;
  const factory HomeProjectsState.loaded({required Projects projects}) = _HomeProjectsStateLoaded;
}
