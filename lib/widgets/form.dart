import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../core/config/colors.dart';
import '../core/config/constants.dart';
import '../core/functions/routes.dart';
import '../features/App/presentation/bloc/app_bloc.dart';
import 'app_bar.dart';

class GlobalForm<BlocT extends FormBloc<String,String>> extends StatelessWidget {
  const GlobalForm({super.key, required this.fields, required this.formBloc,this.onSuccess, required this.title});

  final String title;
  final FormBloc<String, String> formBloc;
  final List<Widget> fields;
  final VoidCallback? onSuccess;

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
    if (state.hasSuccessResponse) {
      context.read<AppBloc>().add(AppEvent.success(message: state.successResponse!));
    }
    if(onSuccess!=null) {
      onSuccess!();
    }
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
  Widget build(BuildContext context) =>
      FormBlocListener<BlocT, String, String>(
        onSubmitting: _onSubmitting,
        onSubmissionFailed: _onSubmissionFailed,
        onSuccess: _onSuccess,
        onFailure: _onFailure,
        child: BlocBuilder<BlocT, FormBlocState<String, String>>(
          builder: (BuildContext context, FormBlocState<String, String> state) =>
              Scaffold(
                appBar: GlobalAppBar(
                  title: title,
                  save: () {
                    formBloc.submit();
                  },
                  canSave: state.isValid(),
                ),
                body: Container(
                  color: kSecondaryBackgroundColor,
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: SingleChildScrollView(
                    child: Column(
                      children: fields,
                    ),
                  ),
                ),
              ),
        ),
      );
}
