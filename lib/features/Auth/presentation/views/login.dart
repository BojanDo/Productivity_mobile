import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/config/routes.dart';
import '../../../../core/functions/routes.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/auth_box.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _onSubmitting(
    BuildContext context,
    FormBlocSubmitting<String, String> state,
  ) {
    context.read<AppBloc>().add(const AppEvent.overlayAdd());
  }

  void _onSubmissionFailed(
    BuildContext context,
    FormBlocSubmissionFailed<String, String> state,
  ) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
  }

  void _onSuccess(BuildContext context, FormBlocSuccess<String, String> state) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
    context.read<AppBloc>().add(const AppEvent.toAuthenticated());
    //context.read<AppBloc>().add(const ToogleAuthenticated(true));
  }

  void _onFailure(BuildContext context, FormBlocFailure<String, String> state) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
    if (state.hasFailureResponse) {
      context
          .read<AppBloc>()
          .add(AppEvent.error(message: state.failureResponse!));
    }
  }

  @override
  Widget build(BuildContext context) {
    final LoginFormBloc loginFormBloc = context.read<AuthBloc>().loginFormBloc;
    return BlocProvider<LoginFormBloc>.value(
      value: loginFormBloc,
      child: AuthBox<LoginFormBloc, FormBlocState<String, String>>(
        formBloc: loginFormBloc,
        buttonText: 'Login',
        switchText: 'Don\'t have an account? Sign up',
        switchPageId: 1,
        submit: () {
          context.read<AuthBloc>().add(const AuthEvent.login());
        },
        page: FormBlocListener<LoginFormBloc, String, String>(
          onSubmitting: _onSubmitting,
          onSubmissionFailed: _onSubmissionFailed,
          onSuccess: _onSuccess,
          onFailure: _onFailure,
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: AutofillGroup(
              child: Column(
                children: <Widget>[
                  ..._fields(loginFormBloc),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _fields(LoginFormBloc loginFormBloc) => <Widget>[
        TextFieldBlocBuilder(
          textFieldBloc: loginFormBloc.email,
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
          textFieldBloc: loginFormBloc.password,
          suffixButton: SuffixButton.obscureText,
          autofillHints: const <String>[AutofillHints.password],
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock_outline),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
      ];
}
