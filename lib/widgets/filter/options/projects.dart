import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../features/Projects/domain/entities/projects.dart';
import '../bottom_sheet_container.dart';

class FilterProjectOptions extends StatelessWidget {
  FilterProjectOptions(
      {super.key, required this.projectsBloc, required this.onBack});

  final MultiSelectFieldBloc<Project, dynamic> projectsBloc;
  final VoidCallback onBack;
  final MultiSelectFieldBloc<Project, dynamic> projects =
      MultiSelectFieldBloc<Project, dynamic>();

  @override
  Widget build(BuildContext context) =>
      BlocProvider<MultiSelectFieldBloc<Project, dynamic>>.value(
        value: projects,
        child: FilterProjectOptionsInner(
          projectsBloc: projectsBloc,
          onBack: onBack,
          projects: projects,
        ),
      );
}

class FilterProjectOptionsInner extends StatefulWidget {
  const FilterProjectOptionsInner(
      {super.key,
      required this.projectsBloc,
      required this.onBack,
      required this.projects});

  final MultiSelectFieldBloc<Project, dynamic> projectsBloc;
  final MultiSelectFieldBloc<Project, dynamic> projects;
  final VoidCallback onBack;

  @override
  State<FilterProjectOptionsInner> createState() =>
      _FilterProjectOptionsInnerState();
}

class _FilterProjectOptionsInnerState extends State<FilterProjectOptionsInner> {
  @override
  void initState() {
    widget.projects.updateItems(widget.projectsBloc.state.items);
    widget.projects.updateInitialValue(widget.projectsBloc.state.initialValue);
    widget.projects.updateValue(widget.projectsBloc.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BottomSheetContainer(
        title: 'Filter by projects',
        onCancel: widget.onBack,
        onFilter: () {
          widget.projectsBloc.updateValue(widget.projects.value);
          widget.onBack;
        },
        filterButtonTitle: 'Save',
        child: CheckboxGroupFieldBlocBuilder<Project>(
          multiSelectFieldBloc: widget.projects,
          itemBuilder: (BuildContext context, Project item) => FieldItem(
            child: Text(item.title),
          ),
        ),
      );
}
