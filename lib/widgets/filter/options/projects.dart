import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../features/Projects/domain/entities/projects.dart';
import '../../profile_picture.dart';
import '../bottom_sheet_container.dart';

class FilterProjectOptions extends StatefulWidget {
  const FilterProjectOptions({
    super.key,
    required this.projectsBloc,
    required this.onBack,
  });

  final MultiSelectFieldBloc<Project, dynamic> projectsBloc;
  final VoidCallback onBack;

  @override
  State<FilterProjectOptions> createState() => _FilterProjectOptionsState();
}

class _FilterProjectOptionsState extends State<FilterProjectOptions> {
  late List<Project> oldValues;

  @override
  void initState() {
    oldValues = widget.projectsBloc.value
        .map((Project item) => item.copyWith())
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BottomSheetContainer(
        title: 'Filter by projects',
        onCancel: () {
          setState(() {
            widget.projectsBloc.updateValue(oldValues);
          });
          widget.onBack();
        },
        onFilter: () {
          widget.onBack();
        },
        filterButtonTitle: 'Save',
        child: CheckboxGroupFieldBlocBuilder<Project>(
          multiSelectFieldBloc: widget.projectsBloc,
          itemBuilder: (BuildContext context, Project item) => FieldItem(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                  height: 40,
                  child: ProfilePicture.project(item),
                ),
                const SizedBox(width: 8),
                // Add some spacing between the picture and the text
                Text(item.title),
              ],
            ),
          ),
        ),
      );
}
