import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/constants.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/profile_picture.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/users.dart';
import '../bloc/user_bloc.dart';

class InvigationsPage extends StatefulWidget {
  const InvigationsPage({super.key});

  @override
  State<InvigationsPage> createState() => _InvigationsPageState();
}

class _InvigationsPageState extends State<InvigationsPage> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.loadInvitations());
    super.initState();
  }

  void _acceptInvitation(int id) {
    context.read<UserBloc>().add(UserEvent.acceptInvitations(id));
  }

  void _declineInvitation(int id) {
    context.read<UserBloc>().add(UserEvent.declineInvitations(id));
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
        builder: (BuildContext context, UserState state) => Scaffold(
          appBar: GlobalAppBar(
            title: 'Invitations',
            count: state.whenOrNull(
              loaded:
                  (User user, Organizations invitations, Users invitedUsers) =>
                      invitations.total,
            ),
          ),
          body: _skeletonizer(state),
        ),
      );

  Widget _skeletonizer(UserState state) {
    final bool isEnabled = state.maybeMap<bool>(
      getting: (_) => true,
      orElse: () => false,
    );
    return Skeletonizer(
      enabled: isEnabled,
      child: _invitationsList(context, state.invitaions, isEnabled),
    );
  }

  Widget _invitationsList(
    BuildContext context,
    Organizations invitations,
    bool isEnabled,
  ) =>
      ListView.builder(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        itemCount: invitations.total,
        itemBuilder: (BuildContext context, int index) =>
            _listItem(invitations.items[index], isEnabled),
      );

  Widget _listItem(Organization organization, bool isEnabled) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // Optional: Rounded corners
                child: ProfilePicture.organization(organization,
                    isEnabled: !isEnabled),
              ),
            ),
            const SizedBox(width: 12), // Space between picture and text
            Expanded(
              child: Text(
                organization.name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <IconButton>[
                IconButton(
                  icon: const Icon(Icons.check, color: Colors.green),
                  onPressed: () => _acceptInvitation(organization.id),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.red),
                  onPressed: () => _declineInvitation(organization.id),
                ),
              ],
            ),
          ],
        ),
      );
}
