import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../features/Tasks/domain/entities/tasks.dart';
import '../bottom_sheet_container.dart';

class FilterDateOptions extends StatefulWidget {
  const FilterDateOptions({
    super.key,
    required this.dateStartBloc,
    required this.dateEndBloc,
    required this.onBack,
  });

  final InputFieldBloc<DateTime?, dynamic> dateStartBloc;
  final InputFieldBloc<DateTime?, dynamic> dateEndBloc;
  final VoidCallback onBack;

  @override
  State<FilterDateOptions> createState() => _FilterDateOptionsState();
}

class _FilterDateOptionsState extends State<FilterDateOptions> {
  late DateTime? oldStart;
  late DateTime? oldEnd;

  @override
  void initState() {
    oldStart = widget.dateStartBloc.value;
    oldEnd = widget.dateEndBloc.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BottomSheetContainer(
        title: 'Filter by status',
        onCancel: () {
          setState(() {
            widget.dateStartBloc.updateValue(oldStart);
            widget.dateEndBloc.updateValue(oldEnd);
          });
          widget.onBack();
        },
        onFilter: () async{
          if(!(await widget.dateEndBloc.validate())) {
            return;
          }
          widget.onBack();
        },
        filterButtonTitle: 'Save',
        child: Column(
          children: <Widget>[
            DateTimeFieldBlocBuilder(
              textColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) =>
                Theme.of(context).colorScheme.onSecondary,
              ),
              dateTimeFieldBloc: widget.dateStartBloc,
              format: DateFormat('dd. MM. yyyy'),
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2200),
              decoration: const InputDecoration(
                labelText: 'Date start',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            DateTimeFieldBlocBuilder(
              textColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) =>
                Theme.of(context).colorScheme.onSecondary,
              ),
              dateTimeFieldBloc: widget.dateEndBloc,
              format: DateFormat('dd. MM. yyyy'),
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
      );
}
