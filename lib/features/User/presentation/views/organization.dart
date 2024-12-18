import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../widgets/form.dart';
import '../../../../widgets/image_picker.dart';
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
        onSuccess: (){
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
//TODO: add name and description fields (can make text field bigger with minLines and maxLines)
      ];
}
