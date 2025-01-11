import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/entities/paginated_list.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/users.dart';
import '../bloc/user_bloc.dart';

class InviteUsersPage extends StatefulWidget {
  const InviteUsersPage({super.key});

  @override
  State<InviteUsersPage> createState() => _InviteUsersPageState();
}

class _InviteUsersPageState extends State<InviteUsersPage> {
  late final InviteUsersFormBloc _formBloc;

  @override
  void initState() {
    super.initState();
    _formBloc = context.read<UserBloc>().inviteUsersFormBloc;
    context.read<UserBloc>().add(const UserEvent.loadInvitedUsers());
  }

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
      context
          .read<AppBloc>()
          .add(AppEvent.success(message: state.successResponse!));
    }
    context.read<UserBloc>().add(const UserEvent.loadInvitedUsers());
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
  Widget build(BuildContext context) => Scaffold(
        appBar: const GlobalAppBar(title: 'Invite users'),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (BuildContext context, UserState state) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _form(),
                const SizedBox(height: 20),
                const Text(
                  'Pending invitations',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                _listPendingInvitations(state),
              ],
            ),
          ),
        ),
      );

  Widget _form() => FormBlocListener<InviteUsersFormBloc, String, String>(
        onSubmitting: _onSubmitting,
        onSubmissionFailed: _onSubmissionFailed,
        onSuccess: _onSuccess,
        onFailure: _onFailure,
        formBloc: _formBloc,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextFieldBlocBuilder(
                textFieldBloc: _formBloc.email,
                suffixButton: SuffixButton.clearText,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const <String>[AutofillHints.email],
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: _formBloc.submit,
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.only(),
                    ),
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
              child: const Text('Send'),
            ),
          ],
        ),
      );

  Widget _listPendingInvitations(UserState state) {
    if (state.invitedUsers.total == 0) {
      return const Center(
        child: Text(
          'No users',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      );
    }
    final bool isEnabled = state.maybeMap<bool>(
      getting: (_) => true,
      orElse: () => false,
    );

    return Expanded(
      child: Skeletonizer(
        enabled: isEnabled,
        child: _invitationsList(context, state.invitedUsers, isEnabled),
      ),
    );
  }

  Widget _invitationsList(
    BuildContext context,
    Users invitedUsers,
    bool isEnabled,
  ) =>
      ListView.builder(
        itemCount: invitedUsers.total,
        itemBuilder: (BuildContext context, int index) {
          final User invitedUser = invitedUsers.items[index];
          return ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: ProfilePicture.user(invitedUser, isEnabled: !isEnabled),
            ),
            title: Text('${invitedUser.firstname} ${invitedUser.lastname}'),
            subtitle: Text(invitedUser.email),
          );
        },
      );
}
