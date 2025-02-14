import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/config/routes.dart';
import '../../../../core/functions/routes.dart';
import '../../../../widgets/app_bar.dart';
import '../../../User/domain/entities/users.dart';
import '../../../User/presentation/bloc/user_bloc.dart';
import '../bloc/app_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
        builder: (BuildContext context, UserState state) {
          final List<Setting> settings = <Setting>[
            Setting(
              icon: Icons.person_outline_outlined,
              title: 'Account',
              desc: 'Edit your account information',
              route: kAccountRoute,
            ),
            Setting(
              icon: Icons.business_sharp,
              title: 'Organization',
              desc: 'Edit your organization information',
              route: kOrganizationRoute,
            ),
            if (state.user.organizationId == null)
              Setting(
                icon: Icons.group_outlined,
                title: 'Invitations',
                desc: 'View organizations you were invited to',
                route: kInvitationsRoute,
              ),
            if (state.user.organizationId != null &&
                state.user.roleName == Role.owner)
              Setting(
                icon: Icons.group_add_outlined,
                title: 'Invite users',
                desc: 'Invite users to your organization',
                route: kInviteUsersRoute,
              ),
          ];

          return Scaffold(
            appBar: const GlobalAppBar(
              title: 'Settings',
            ),
            body: Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: SingleChildScrollView(
                child: Column(
                  children: settings
                      .map((Setting setting) => GestureDetector(
                            onTap: () {
                              routeWithResult(
                                  context.read<AppBloc>().innerNavigator,
                                  setting.route, (Object? result) {
                                if (result is! bool) {
                                  return;
                                }
                                if (result) {
                                  context
                                      .read<UserBloc>()
                                      .add(const UserEvent.getUser());
                                }
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                bottom: kDefaultPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                border: Border.all(
                                  color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color,
                                  width: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.width,
                                ),
                              ),
                              padding:
                                  const EdgeInsets.all(kDefaultPadding / 3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(setting.icon,color: Theme.of(context).colorScheme.onSecondary),
                                      const SizedBox(width: 8),
                                      Text(
                                        setting.title,
                                        style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.onSecondary),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    setting.desc,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          );
        },
      );
}

class Setting {
  final IconData icon;
  final String title;
  final String desc;
  final String route;

  Setting(
      {required this.icon,
      required this.title,
      required this.desc,
      required this.route});
}
