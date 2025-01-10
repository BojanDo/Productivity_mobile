import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../../Projects/domain/entities/projects.dart';
import '../../../../Projects/domain/usecases/get_projects.dart';

part 'home_projects_event.dart';

part 'home_projects_state.dart';

part 'generated/home_projects_bloc.freezed.dart';

class HomeProjectsBloc extends Bloc<HomeProjectsEvent, HomeProjectsState> {
  HomeProjectsBloc(GetProjects getProjects)
      : _getProjects = getProjects,
        super(
          HomeProjectsState.getting(projects: HomeProjectsBloc.mock),
        ) {
    on<HomeProjectsEvent>(
      (HomeProjectsEvent event, Emitter<HomeProjectsState> emit) => event.when(
        get: () async {
          emit(HomeProjectsState.getting(projects: HomeProjectsBloc.mock));
          final Either<Failure, Projects> result = await _getProjects();
          result.fold(
            (Failure failure) {
              sl<AppBloc>().add(
                const AppEvent.error(
                  message: 'Error getting the projects',
                ),
              );
              emit(
                const HomeProjectsState.loaded(
                  projects: Projects(items: <Project>[], total: 0),
                ),
              );
            },
            (Projects projects) {
              emit(HomeProjectsState.loaded(projects: projects));
            },
          );
          return null;
        },
      ),
    );
  }

  final GetProjects _getProjects;

  static Projects get mock => Projects(
        items: List<Project>.generate(
          10,
          (int index) => Project(
            title: 'This is a project title',
            id: index,
            description: '',
          ),
        ),
        total: 10,
      );
}
