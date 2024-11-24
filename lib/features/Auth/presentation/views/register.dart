import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/functions/routes.dart';
import '../../../../widgets/image_picker.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../User/domain/entities/users.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/auth_box.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void _onSubmitting(
    BuildContext context,
    FormBlocSubmitting<User, String> state,
  ) {
    context.read<AppBloc>().add(const AppEvent.overlayAdd());
  }

  void _onSubmissionFailed(
    BuildContext context,
    FormBlocSubmissionFailed<User, String> state,
  ) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
  }

  void _onSuccess(BuildContext context, FormBlocSuccess<User, String> state) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
    context.read<AppBloc>().add(const AppEvent.success(message: 'Successfuly created an account'));
    animateToPage(context.read<AuthBloc>().pageController, 0);
  }

  void _onFailure(BuildContext context, FormBlocFailure<User, String> state) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
    if (state.hasFailureResponse) {
      context
          .read<AppBloc>()
          .add(AppEvent.error(message: state.failureResponse!));
    }
  }

  @override
  Widget build(BuildContext context) {
    final RegisterFormBloc registerFormBloc =
        context.read<AuthBloc>().registerFormBloc;
    return BlocProvider<RegisterFormBloc>.value(
      value: registerFormBloc,
      child: AuthBox<RegisterFormBloc, FormBlocState<User, String>>(
        formBloc: registerFormBloc,
        buttonText: 'Register',
        switchText: 'Already have an account? Login',
        switchPageId: 0,
        submit: () {
          context.read<AuthBloc>().add(const AuthEvent.register());
        },
        page: FormBlocListener<RegisterFormBloc, User, String>(
          onSubmitting: _onSubmitting,
          onSubmissionFailed: _onSubmissionFailed,
          onSuccess: _onSuccess,
          onFailure: _onFailure,
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: AutofillGroup(
              child: Column(
                children: <Widget>[
                  ..._fields(registerFormBloc),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _fields(RegisterFormBloc registerFormBloc) => <Widget>[
        ImagePickerFieldBlocBuilder(
          fileFieldBloc: registerFormBloc.profilePicture,
          decoration: const InputDecoration(
            labelText: 'Profile picture',
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: registerFormBloc.email,
          suffixButton: SuffixButton.clearText,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const <String>[AutofillHints.email],
          decoration: const InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email_outlined),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: registerFormBloc.firstname,
          suffixButton: SuffixButton.clearText,
          keyboardType: TextInputType.name,
          autofillHints: const <String>[AutofillHints.name],
          decoration: const InputDecoration(
            labelText: 'First name',
            prefixIcon: Icon(Icons.person_outline),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: registerFormBloc.lastname,
          suffixButton: SuffixButton.clearText,
          keyboardType: TextInputType.name,
          autofillHints: const <String>[AutofillHints.familyName],
          decoration: const InputDecoration(
            labelText: 'Last name',
            prefixIcon: Icon(Icons.person_outline),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: registerFormBloc.password,
          suffixButton: SuffixButton.obscureText,
          autofillHints: const <String>[AutofillHints.password],
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock_outline),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: registerFormBloc.jobTitle,
          suffixButton: SuffixButton.clearText,
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
