import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/projects.dart';
import '../../domain/usecases/get_projects.dart';

part 'projects_event.dart';

part 'projects_state.dart';

part 'generated/projects_bloc.freezed.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc({
    required GetProjects getProjects,
  })  : _getProjects = getProjects,
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
        get: () => _getProjectsHandler(emit),
      ),
    );
  }

  Future<void> _getProjectsHandler(
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

  final GetProjects _getProjects;
}
