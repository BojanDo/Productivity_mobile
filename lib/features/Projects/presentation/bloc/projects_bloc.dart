import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/project_response.dart';
import '../../domain/entities/projects.dart';
import '../../domain/usecases/create_project.dart';
import '../../domain/usecases/delete_project.dart';
import '../../domain/usecases/get_projects.dart';
import '../../domain/usecases/update_project.dart';

part 'projects_event.dart';

part 'projects_state.dart';

part 'forms/project_form_bloc.dart';

part 'generated/projects_bloc.freezed.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc(
      {required GetProjects getProjects, required DeleteProject deleteProject})
      : _getProjects = getProjects,
        _deleteProject = deleteProject,
        super(
          ProjectsState.getting(
            projects: Projects(
              items: List<Project>.generate(
                10,
                (int index) => Project(
                  title: 'This is a project title',
                  id: index,
                  description: '',
                ),
              ),
              total: 10,
            ),
          ),
        ) {
    on<ProjectsEvent>(
      (ProjectsEvent event, Emitter<ProjectsState> emit) => event.when(
        get: () => _deleteProjectHandler(emit),
        delete: (int id) => _getProjectsHandler(id, emit),
      ),
    );
  }

  Future<void> _deleteProjectHandler(
    Emitter<ProjectsState> emit,
  ) async {
    final Either<Failure, Projects> result = await _getProjects();
    result.fold(
      (Failure failure) {
        sl<AppBloc>().add(
          const AppEvent.error(message: 'Error getting the projects'),
        );
        routePop(sl<AppBloc>().innerNavigator);
      },
      (Projects projects) => emit(ProjectsState.loaded(projects: projects)),
    );
  }

  Future<void> _getProjectsHandler(
    int id,
    Emitter<ProjectsState> emit,
  ) async {
    sl<AppBloc>().add(const AppEvent.overlayAdd());
    final Either<Failure, ProjectResponse> result = await _deleteProject(id);
    sl<AppBloc>().add(const AppEvent.overlayRemove());

    result.fold(
      (Failure failure) {
        sl<AppBloc>().add(AppEvent.error(message: failure.message));
      },
      (ProjectResponse response) {
        sl<AppBloc>().add(AppEvent.error(message: response.message));
        add(const ProjectsEvent.get());
      },
    );
  }

  final GetProjects _getProjects;
  final DeleteProject _deleteProject;
}
