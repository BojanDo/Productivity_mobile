import 'package:flutter/material.dart';

import 'filter_form_bloc.dart';
import 'filters.dart';
import 'options/assigned.dart';
import 'options/date.dart';
import 'options/labels.dart';
import 'options/projects.dart';
import 'options/statuses.dart';

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
        FilterType.assigned => FilterAssignedOptions(
            assignedBloc: filterFormBloc.assigned,
            onBack: onBack,
          ),
        FilterType.status => FilterStatusesOptions(
            statusBloc: filterFormBloc.statuses,
            onBack: onBack,
          ),
        FilterType.label => FilterLabelsOptions(
            labelsBloc: filterFormBloc.labels,
            onBack: onBack,
          ),
        FilterType.date => FilterDateOptions(
            dateStartBloc: filterFormBloc.dateStart,
            dateEndBloc: filterFormBloc.dateEnd,
            onBack: onBack,
          ),
      };
}
