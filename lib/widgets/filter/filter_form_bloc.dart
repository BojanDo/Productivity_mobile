import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../core/errors/failure.dart';
import '../../features/Projects/domain/entities/projects.dart';
import '../../features/Projects/domain/usecases/get_projects.dart';
import '../../features/Tasks/domain/entities/tasks.dart';
import '../../features/User/domain/entities/users.dart';
import '../../features/User/domain/usecases/get_users.dart';

class FilterFormBloc extends FormBloc<String, String> {
  FilterFormBloc({required GetProjects getProjects, required GetUsers getUsers})
      : _getProjects = getProjects,
        _getUsers = getUsers {
    addFieldBlocs(
      fieldBlocs: <FieldBloc<FieldBlocStateBase>>[
        projects,
        assigned,
        statuses,
        labels,
        dateStart,
        dateEnd,
      ],
    );
  }

  void initialize({
    List<int>? projects,
    List<int>? assigned,
    List<Status>? statuses,
    List<Label>? labels,
    String? dateStart,
    String? dateEnd,
  }) async {
    final Either<Failure, Projects> result = await _getProjects();
    result.fold(
      (Failure failure) {},
      (Projects data) {
        final List<Project> filteredProjects = projects != null
            ? data.items
                .where((Project item) => projects.contains(item.id))
                .toList()
            : data.items;
        this.projects.updateItems(data.items);
        this.projects.updateInitialValue(filteredProjects);
      },
    );

    final Either<Failure, Users> resultUsers = await _getUsers();
    resultUsers.fold(
      (Failure failure) {},
      (Users data) {
        final List<User> filteredAssigned = assigned != null
            ? data.items
                .where((User item) => assigned.contains(item.id))
                .toList()
            : data.items;
        this.assigned.updateItems(data.items);
        this.assigned.updateInitialValue(filteredAssigned);
      },
    );

    this.statuses.updateInitialValue(statuses ?? Status.values);
    this.labels.updateInitialValue(labels ?? Label.values);
  }

  final MultiSelectFieldBloc<Project, dynamic> projects =
      MultiSelectFieldBloc<Project, dynamic>();
  final MultiSelectFieldBloc<User, dynamic> assigned =
      MultiSelectFieldBloc<User, dynamic>();
  final MultiSelectFieldBloc<Status, dynamic> statuses =
      MultiSelectFieldBloc<Status, dynamic>(items: Status.values);
  final MultiSelectFieldBloc<Label, dynamic> labels =
      MultiSelectFieldBloc<Label, dynamic>(items: Label.values);
  final InputFieldBloc<DateTime?, dynamic> dateStart =
      InputFieldBloc<DateTime?, dynamic>(initialValue: null);
  final InputFieldBloc<DateTime?, dynamic> dateEnd =
      InputFieldBloc<DateTime?, dynamic>(initialValue: null);

  @override
  FutureOr<void> onSubmitting() async {}

  final GetProjects _getProjects;
  final GetUsers _getUsers;
}
