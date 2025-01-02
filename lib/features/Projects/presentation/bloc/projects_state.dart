part of 'projects_bloc.dart';

@freezed
class ProjectsState with _$ProjectsState {
  const factory ProjectsState.getting({required Projects projects}) = _ProjectsStateGetting;
  const factory ProjectsState.loaded({required Projects projects}) = _ProjectsStateLoaded;
}
