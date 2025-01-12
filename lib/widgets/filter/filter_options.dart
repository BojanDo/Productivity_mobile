import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../features/Projects/domain/entities/projects.dart';
import '../../features/Tasks/domain/entities/tasks.dart';
import '../../features/User/domain/entities/users.dart';
import 'bottom_sheet_container.dart';
import 'filter_form_bloc.dart';
import 'filters.dart';
import 'options/projects.dart';

class FilterOptionList extends StatelessWidget {
  final FilterType filter;
  final VoidCallback onBack;
  final FilterFormBloc filterFormBloc;

  const FilterOptionList({
    super.key,
    required this.filter,
    required this.onBack,
    required this.filterFormBloc,
  });

  @override
  Widget build(BuildContext context) => switch (filter) {
        FilterType.project => FilterProjectOptions(
            projectsBloc: filterFormBloc.projects,
            onBack: onBack,
          ),
        FilterType.assigned => CheckboxGroupFieldBlocBuilder<User>(
            multiSelectFieldBloc: filterFormBloc.assigned,
            itemBuilder: (BuildContext context, User item) => FieldItem(
              child: Text(item.firstname),
            ),
          ),
        FilterType.status => CheckboxGroupFieldBlocBuilder<Status>(
            multiSelectFieldBloc: filterFormBloc.statuses,
            itemBuilder: (BuildContext context, Status item) => FieldItem(
              child: Container(
                decoration: BoxDecoration(
                  color: item.background,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                child: Text(
                  item.displayName,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: item.textColor,
                  ),
                ),
              ),
            ),
          ),
        FilterType.label => CheckboxGroupFieldBlocBuilder<Label>(
            multiSelectFieldBloc: filterFormBloc.labels,
            itemBuilder: (BuildContext context, Label item) => FieldItem(
              child: Text(item.displayName),
            ),
          ),
        FilterType.date => Column(
            children: [
              DateTimeFieldBlocBuilder(
                dateTimeFieldBloc: filterFormBloc.dateStart,
                format: DateFormat('dd. MM. YYYY'),
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2200),
                decoration: const InputDecoration(
                  labelText: 'Date start',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              DateTimeFieldBlocBuilder(
                dateTimeFieldBloc: filterFormBloc.dateEnd,
                format: DateFormat('dd. MM. YYYY'),
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2200),
                decoration: const InputDecoration(
                  labelText: 'Date end',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ],
          ),
      };
}
