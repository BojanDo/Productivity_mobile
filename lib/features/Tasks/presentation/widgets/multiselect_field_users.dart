import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../../core/config/colors.dart';
import '../../../User/domain/entities/users.dart';

class MultiselectFieldUsers extends StatelessWidget {
  const MultiselectFieldUsers({super.key, required this.formBloc});

  final MultiSelectFieldBloc<User, dynamic> formBloc;

  @override
  Widget build(BuildContext context) => MultiSelectDialogField<User>(
    itemsTextStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary,),
    selectedItemsTextStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary,),
        closeSearchIcon: Icon(Icons.close,color: Theme.of(context).colorScheme.onSecondary,),
        searchIcon: Icon(Icons.search,color: Theme.of(context).colorScheme.onSecondary,),
        buttonIcon: Icon(Icons.arrow_drop_down,color: Theme.of(context).colorScheme.onSecondary,),
        title: Text(
          'Assigned users',
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
        buttonText: Text(
          'Assigned users',
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context)
                .dividerTheme
                .color!, // Set your custom border color
          ),
          borderRadius: BorderRadius.circular(8.0), // Adjust radius as needed
        ),
        searchable: true,
        items: formBloc.state.items
            .map(
              (User user) => MultiSelectItem<User>(
                user,
                '${user.firstname} ${user.lastname}',
              ),
            )
            .toList(),
        initialValue: formBloc.value,
        listType: MultiSelectListType.LIST,
        onConfirm: (List<User> values) {
          formBloc.updateValue(values);
        },
        chipDisplay: MultiSelectChipDisplay<User>(
          items: formBloc.value
              .map(
                (User user) => MultiSelectItem<User>(
                  user,
                  '${user.firstname} ${user.lastname}',
                ),
              )
              .toList(),
          chipColor: Colors.grey[200],
          textStyle: const TextStyle(
            color: Colors.black, // Optional: Set chip text color
          ),
        ),
      );
}
