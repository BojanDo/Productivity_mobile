import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/form.dart';
import '../../../../widgets/image_picker.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../bloc/user_bloc.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        title: 'Account',
        onSuccess: () {
          routePopWithResult(sl<AppBloc>().innerNavigator, true);
        },
        formBloc: accountFormBloc,
        fields: _fields(accountFormBloc),
      ),
    );
  }

  List<Widget> _fields(AccountFormBloc accountFormBloc) => <Widget>[
        ImagePickerFieldBlocBuilder(
          fileFieldBloc: accountFormBloc.profilePicture,
          decoration:  const InputDecoration(
            labelText: 'Profile picture',
          ),
        ),
        TextFieldBlocBuilder(
          textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
            Theme.of(context).colorScheme.onSecondary,
          ),
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
          textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
            Theme.of(context).colorScheme.onSecondary,
          ),
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
          textColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) =>
                Theme.of(context).colorScheme.onSecondary,
          ),
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
