import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../features/User/domain/entities/users.dart';
import '../../profile_picture.dart';
import '../bottom_sheet_container.dart';

class FilterAssignedOptions extends StatefulWidget {
  const FilterAssignedOptions({
    super.key,
    required this.assignedBloc,
    required this.onBack,
  });

  final MultiSelectFieldBloc<User, dynamic> assignedBloc;
  final VoidCallback onBack;

  @override
  State<FilterAssignedOptions> createState() => _FilterAssignedOptionsState();
}

class _FilterAssignedOptionsState extends State<FilterAssignedOptions> {
  late List<User> oldValues;

  @override
  void initState() {
    oldValues =
        widget.assignedBloc.value.map((User item) => item.copyWith()).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BottomSheetContainer(
        title: 'Filter by assigned users',
        onCancel: () {
          setState(() {
            widget.assignedBloc.updateValue(oldValues);
          });
          widget.onBack();
        },
        onFilter: () {
          widget.onBack();
        },
        filterButtonTitle: 'Save',
        child: CheckboxGroupFieldBlocBuilder<User>(
          multiSelectFieldBloc: widget.assignedBloc,
          itemBuilder: (BuildContext context, User item) => FieldItem(
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: ProfilePicture.user(item),
                ),
                const SizedBox(width: 8),
                // Add some spacing between the picture and the text
                Text('${item.firstname} ${item.lastname}'),
              ],
            ),
          ),
        ),
      );
}
