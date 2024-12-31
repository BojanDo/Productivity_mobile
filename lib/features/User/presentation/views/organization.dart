import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../widgets/form.dart';
import '../../../../widgets/image_picker.dart';
import '../../domain/entities/users.dart';
import '../bloc/user_bloc.dart';

class Organization extends StatefulWidget {
  const Organization({super.key});

  @override
  State<Organization> createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.loadOrganization());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final OrganizationFormBloc organizationFormBloc =
        context.read<UserBloc>().organizationFormBloc;
    return BlocProvider<OrganizationFormBloc>.value(
      value: organizationFormBloc,
      child: GlobalForm<OrganizationFormBloc>(
        title: 'Organization',
        onSuccess: () {
          context.read<UserBloc>().add(const UserEvent.getUser());
        },
        formBloc: organizationFormBloc,
        fields: _fields(organizationFormBloc),
      ),
    );
  }

  List<Widget> _fields(OrganizationFormBloc organizationFormBloc) => <Widget>[
        ImagePickerFieldBlocBuilder(
          fileFieldBloc: organizationFormBloc.profilePicture,
          decoration: const InputDecoration(
            labelText: 'Profile picture',
          ),
        ),
        TextFieldBlocBuilder(
          isEnabled: !organizationFormBloc.isViewMode(),
          textFieldBloc: organizationFormBloc.name,
          keyboardType: TextInputType.text,
          autofillHints: const <String>[AutofillHints.organizationName],
          decoration: const InputDecoration(
            labelText: 'Organization name',
            prefixIcon: Icon(Icons.business_outlined),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          isEnabled: !organizationFormBloc.isViewMode(),
          minLines: 1,
          maxLines: 10,
          textFieldBloc: organizationFormBloc.description,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: 'Description',
            prefixIcon: Icon(Icons.notes_outlined),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
      ];
}
