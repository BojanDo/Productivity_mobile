part of 'projects_bloc.dart';

@freezed
class ProjectsEvent with _$ProjectsEvent {
  const factory ProjectsEvent.get() = _ProjectsEventGet;
  const factory ProjectsEvent.delete({required int id}) = _ProjectsEventDelete;

  
}
