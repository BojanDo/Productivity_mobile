import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../features/Tasks/domain/entities/tasks.dart';
import '../bottom_sheet_container.dart';

class FilterStatusesOptions extends StatefulWidget {
  const FilterStatusesOptions({
    super.key,
    required this.statusBloc,
    required this.onBack,
  });

  final MultiSelectFieldBloc<Status, dynamic> statusBloc;
  final VoidCallback onBack;

  @override
  State<FilterStatusesOptions> createState() => _FilterStatusesOptionsState();
}

class _FilterStatusesOptionsState extends State<FilterStatusesOptions> {
  late List<Status> oldValues;

  @override
  void initState() {
    oldValues =
    oldValues=<Status>[...widget.statusBloc.value];
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BottomSheetContainer(
    title: 'Filter by status',
    onCancel: () {
      setState(() {
        widget.statusBloc.updateValue(oldValues);
      });
      widget.onBack();
    },
    onFilter: () {
      widget.onBack();
    },
    filterButtonTitle: 'Save',
    child: CheckboxGroupFieldBlocBuilder<Status>(
      textColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) =>
        Theme.of(context).colorScheme.onSecondary,
      ),
      multiSelectFieldBloc: widget.statusBloc,
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
  );
}
