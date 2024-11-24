import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/config/routes.dart';
import '../../../../core/functions/routes.dart';
import '../../../../widgets/app_bar.dart';
import '../bloc/app_bloc.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

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
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
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
                          route(
                            context.read<AppBloc>().innerNavigator,
                            setting.route,
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              bottom: kDefaultPadding / 2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: kBorderSide.color,
                              width: kBorderSide.width,
                            ),
                          ),
                          padding: const EdgeInsets.all(kDefaultPadding / 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(setting.icon),
                                  const SizedBox(width: 8),
                                  Text(
                                    setting.title,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                setting.desc,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey),
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
