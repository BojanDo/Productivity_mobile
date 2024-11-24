import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../widgets/form.dart';
import '../../../../widgets/image_picker.dart';
import '../bloc/user_bloc.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.loadAccount());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AccountFormBloc accountFormBloc =
        context.read<UserBloc>().accountFormBloc;
    return BlocProvider<AccountFormBloc>.value(
      value: accountFormBloc,
      child: GlobalForm<AccountFormBloc>(
        onSuccess: (){
          context.read<UserBloc>().add(const UserEvent.getUser());
        },
        formBloc: accountFormBloc,
        fields: _fields(accountFormBloc),
      ),
    );
  }

  List<Widget> _fields(AccountFormBloc accountFormBloc) => <Widget>[
        ImagePickerFieldBlocBuilder(
          fileFieldBloc: accountFormBloc.profilePicture,
          decoration: const InputDecoration(
            labelText: 'Profile picture',
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: accountFormBloc.firstname,
          keyboardType: TextInputType.name,
          autofillHints: const <String>[AutofillHints.name],
          decoration: const InputDecoration(
            labelText: 'First name',
            prefixIcon: Icon(Icons.person_outline),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: accountFormBloc.lastname,
          keyboardType: TextInputType.name,
          autofillHints: const <String>[AutofillHints.familyName],
          decoration: const InputDecoration(
            labelText: 'Last name',
            prefixIcon: Icon(Icons.person_outline),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: accountFormBloc.jobTitle,
          keyboardType: TextInputType.text,
          autofillHints: const <String>[AutofillHints.jobTitle],
          decoration: const InputDecoration(
            labelText: 'Job title',
            prefixIcon: Icon(Icons.work_outline),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
      ];
}
