import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../User/domain/entities/users.dart';
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
    if (state.hasSuccessResponse) {
      context
          .read<AppBloc>()
          .add(AppEvent.toAuthenticated(user: state.successResponse!));
    } else {
      context
          .read<AppBloc>()
          .add(const AppEvent.error(message: 'Unknown error occurd'));
    }
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
    final LoginFormBloc loginFormBloc = context.read<AuthBloc>().loginFormBloc;
    return BlocProvider<LoginFormBloc>.value(
      value: loginFormBloc,
      child: AuthBox<LoginFormBloc, FormBlocState<User, String>>(
        formBloc: loginFormBloc,
        buttonText: 'Login',
        switchText: 'Don\'t have an account? Sign up',
        switchPageId: 1,
        useOfflineText: 'Continue in offline mode',
        useOfflinePageId: 2,
        submit: () {
          context.read<AuthBloc>().add(const AuthEvent.login());
        },
        page: FormBlocListener<LoginFormBloc, User, String>(
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
          textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
            Theme.of(context).colorScheme.onSecondary,
          ),
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
          textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
            Theme.of(context).colorScheme.onSecondary,
          ),
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
