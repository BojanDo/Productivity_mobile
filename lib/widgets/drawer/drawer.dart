import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/config/colors.dart';
import '../../core/config/routes.dart';
import '../../core/functions/routes.dart';
import '../../core/services/injection_container.dart';
import '../../features/App/presentation/bloc/app_bloc.dart';
import '../../features/User/domain/entities/users.dart';
import '../../features/User/presentation/bloc/user_bloc.dart';
import 'drawer_bloc.dart';

class GlobalDrawer extends StatefulWidget {
  GlobalDrawer({
    super.key,
  });

  final GlobalKey<NavigatorState> outerNavigator = sl<AppBloc>().outerNavigator;
  final GlobalKey<NavigatorState> innerNavigator = sl<AppBloc>().innerNavigator;

  @override
  State<GlobalDrawer> createState() => _GlobalDrawerState();
}

class _GlobalDrawerState extends State<GlobalDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    if (context.read<DrawerBloc>().state.visibleList ==
        DrawerVisibleList.second) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleList() {
    final DrawerState state = context.read<DrawerBloc>().state;
    final DrawerVisibleList visibleList =
        state.visibleList == DrawerVisibleList.first
            ? DrawerVisibleList.second
            : DrawerVisibleList.first;

    if (visibleList == DrawerVisibleList.second) {
      _controller.forward();
    } else {
      _controller.reverse();
    }

    context.read<DrawerBloc>().add(
          DrawerEvent.route(
            route: state.currentRoute,
            visibleList: visibleList,
          ),
        );
  }

  final List<DrawerElement> _firstList = <DrawerElement>[
    const DrawerElement(
      title: 'HOME',
      route: kHomeRoute,
      icon: Icons.monitor_outlined,
    ),
    const DrawerElement(
      title: 'TASKS',
      route: kTasksRoute,
      icon: Icons.note_alt_outlined,
    ),
    const DrawerElement(
      title: 'DOCS',
      route: kDocumentsRoute,
      icon: Icons.book_outlined,
    ),
    const DrawerElement(
      title: 'PROJECTS',
      route: kProjectsRoute,
      icon: Icons.folder_copy_outlined,
    ),
  ];
  final List<DrawerElement> _secondList = <DrawerElement>[
    const DrawerElement(
      title: 'My profile',
      route: kUserRoute,
      icon: Icons.person_outline_outlined,
    ),
    const DrawerElement(
      title: 'Settings',
      route: kSettingsRoute,
      icon: Icons.settings_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
        builder: (BuildContext context, UserState state) =>
            _drawer(context, state.user),
      );

  Drawer _drawer(BuildContext context, User user) => Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  _list(_firstList, DrawerVisibleList.first),
                  SlideTransition(
                    position: _slideAnimation,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          _list(_secondList, DrawerVisibleList.second),
                          const Divider(),
                          Expanded(
                            child: _listItem(
                              const DrawerElement(
                                title: 'Logout',
                                route: '/logut',
                                icon: Icons.logout_outlined,
                              ),
                              '',
                              DrawerVisibleList.second,
                              () {
                                context
                                    .read<AppBloc>()
                                    .add(const AppEvent.toNotAuthenticated());
                                routePopAllPushReplacement(
                                    widget.outerNavigator, kAuthRoute);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _header(user),
          ],
        ),
      );

  Widget _header(User user) => BlocBuilder<DrawerBloc, DrawerState>(
        builder: (BuildContext context, DrawerState state) => SizedBox(
          height: MediaQuery.paddingOf(context).top + 80,
          child: DrawerHeader(
            margin: EdgeInsets.zero,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.person),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${user.firstname} ${user.lastname}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            user.jobTitle,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    BlocBuilder<DrawerBloc, DrawerState>(
                      builder: (BuildContext context, DrawerState state) =>
                          GestureDetector(
                        onTap: _toggleList,
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) =>
                                  ScaleTransition(
                            scale: animation,
                            child: child,
                          ),
                          child: Icon(
                            state.visibleList == DrawerVisibleList.second
                                ? Icons.keyboard_arrow_up_sharp
                                : Icons.keyboard_arrow_down_sharp,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget _list(
    final List<DrawerElement> list,
    DrawerVisibleList listNr,
  ) =>
      BlocBuilder<DrawerBloc, DrawerState>(
        builder: (BuildContext context, DrawerState state) => ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            final DrawerElement item = list[index];
            return _listItem(item, state.currentRoute, listNr, () {
              routePopAllPushReplacement(widget.innerNavigator, item.route);
              context.read<DrawerBloc>().add(
                    DrawerEvent.route(
                      route: item.route,
                      visibleList: listNr,
                    ),
                  );
              Scaffold.of(context).closeDrawer();
            });
          },
        ),
      );

  ListTile _listItem(
    DrawerElement item,
    String currentRoute,
    DrawerVisibleList listNr,
    VoidCallback onTap,
  ) {
    final bool isCurrent =
        listNr == DrawerVisibleList.first && item.isCurrnet(currentRoute);
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      dense: true,
      leading: Icon(
        item.icon,
        color: listNr == DrawerVisibleList.first ? kPrimaryColor : null,
      ),
      title: Text(
        item.title,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: isCurrent ? FontWeight.bold : null,
          color: isCurrent ? kPrimaryColor : null,
        ),
      ),
      onTap: onTap,
    );
  }
}

class DrawerElement {
  const DrawerElement({
    required this.title,
    required this.route,
    required this.icon,
  });

  final String title;
  final String route;
  final IconData icon;

  bool isCurrnet(String current) => route == current;
}
