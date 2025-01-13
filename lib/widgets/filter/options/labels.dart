import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../features/Projects/domain/entities/projects.dart';
import '../../../features/Tasks/domain/entities/tasks.dart';
import '../bottom_sheet_container.dart';

class FilterLabelsOptions extends StatefulWidget {
  const FilterLabelsOptions({
    super.key,
    required this.labelsBloc,
    required this.onBack,
  });

  final MultiSelectFieldBloc<Label, dynamic> labelsBloc;
  final VoidCallback onBack;

  @override
  State<FilterLabelsOptions> createState() => _FilterLabelsOptionsState();
}

class _FilterLabelsOptionsState extends State<FilterLabelsOptions> {
  late List<Label> oldValues;

  @override
  void initState() {
   oldValues = <Label>[...widget.labelsBloc.value];
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BottomSheetContainer(
        title: 'Filter by labels',
        onCancel: () {
          setState(() {
            widget.labelsBloc.updateValue(oldValues);
          });
          widget.onBack();
        },
        onFilter: () {
          widget.onBack();
        },
        filterButtonTitle: 'Save',
        child: CheckboxGroupFieldBlocBuilder<Label>(
          multiSelectFieldBloc: widget.labelsBloc,
          itemBuilder: (BuildContext context, Label item) => FieldItem(
            child: Text(item.displayName),
          ),
        ),
      );
}
