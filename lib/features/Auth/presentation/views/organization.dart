import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/functions/routes.dart';
import '../../../../widgets/image_picker.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../User/domain/entities/organizations.dart';
import '../../../User/domain/entities/users.dart';
import '../../../User/presentation/bloc/user_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/offline/offline_bloc.dart';
import '../widgets/auth_box.dart';
import '../widgets/box.dart';

class OfflineOrganizationPage extends StatefulWidget {
  const OfflineOrganizationPage({super.key});

  @override
  State<OfflineOrganizationPage> createState() =>
      _OfflineOrganizationPageState();
}

class _OfflineOrganizationPageState extends State<OfflineOrganizationPage> {
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
    context.read<AppBloc>().add(
          const AppEvent.success(
            message: 'Successfuly created an organization',
          ),
        );
    context.read<OfflineBloc>().add(const OfflineEvent.get());
    animateToPage(context.read<AuthBloc>().pageController, 2);
  }

  void _onFailure(BuildContext context, FormBlocFailure<String, String> state) {
    context.read<AppBloc>().add(const AppEvent.overlayRemove());
    if (state.hasFailureResponse) {
      context
          .read<AppBloc>()
          .add(AppEvent.error(message: state.failureResponse!));
    }
  }

  late OrganizationFormBloc organizationFormBloc;

  @override
  void initState() {
    organizationFormBloc = context.read<OfflineBloc>().organizationFormBloc;
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      BlocProvider<OrganizationFormBloc>.value(
        value: organizationFormBloc,
        child: Box(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: <Widget>[
                FormBlocListener<OrganizationFormBloc, String, String>(
                  onSubmitting: _onSubmitting,
                  onSubmissionFailed: _onSubmissionFailed,
                  onSuccess: _onSuccess,
                  onFailure: _onFailure,
                  child: BlocBuilder<OrganizationFormBloc,
                      FormBlocState<String, String>>(
                    builder: (BuildContext context,
                        FormBlocState<String, String> state) => SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: AutofillGroup(
                          child: Column(
                            children: <Widget>[
                              ..._fields(),
                              const SizedBox(
                                height: 16,
                              ),
                              if (organizationFormBloc.mode.value ==
                                  OrganizationFormMode.create)
                                SizedBox(
                                  width: double.infinity,
                                  child: _button('Create', organizationFormBloc.submit),
                                ),
                              if (organizationFormBloc.mode.value ==
                                  OrganizationFormMode.edit)
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: _button('Save', organizationFormBloc.submit),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: _button('Go to organization page', () {
                                        context.read<AppBloc>().add(
                                          AppEvent.toOffline(
                                            organization:
                                            organizationFormBloc.organization.value!,
                                          ),
                                        );
                                      }),
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  animateToPage(
                                    context.read<AuthBloc>().pageController,
                                    2,
                                  );
                                },
                                child: Text(
                                  'Back to organizations list',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSecondary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),
                ),

              ],
            ),
          ),
        ),
      );

  List<Widget> _fields() => <Widget>[
        TextFieldBlocBuilder(
          textColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) =>
                Theme.of(context).colorScheme.onSecondary,
          ),
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
          textColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) =>
                Theme.of(context).colorScheme.onSecondary,
          ),
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

  Widget _button(String text, VoidCallback action) =>
      BlocBuilder<OrganizationFormBloc, FormBlocState<String, String>>(
        builder: (BuildContext context, FormBlocState<String, String> state) =>
            ElevatedButton(
          onPressed: state.isValid() ? action : null,
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.disabled)) {
                    return kPrimaryColor.withOpacity(0.4);
                  }
                  return kPrimaryColor;
                }),
                foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) => Colors.white,
                ),
              ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      );
}
