import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/config/routes.dart';
import '../../core/services/injection_container.dart';
import 'drawer_bloc.dart';

class GlobalDrawer extends StatefulWidget {
  const GlobalDrawer({
    super.key,
    required this.outerNavigator,
    required this.innerNavigator,
  });

  final GlobalKey<NavigatorState> outerNavigator;
  final GlobalKey<NavigatorState> innerNavigator;

  @override
  State<GlobalDrawer> createState() => _GlobalDrawerState();
}

class _GlobalDrawerState extends State<GlobalDrawer>
    with SingleTickerProviderStateMixin {
  bool _showSecondList = false;
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
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleList() {
    setState(() {
      _showSecondList = !_showSecondList;
    });

    if (_showSecondList) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) => BlocProvider<DrawerBloc>(
        create: (BuildContext context) => sl<DrawerBloc>(),
        child: _drawer(),
      );

  final List<DrawerElement> _firstList = <DrawerElement>[
    const DrawerElement(
      title: 'HOME',
      route: kHomeRoute,
      icon: Icon(Icons.monitor_outlined),
    ),
    const DrawerElement(
      title: 'TASKS',
      route: kTasksRoute,
      icon: Icon(Icons.note_alt_outlined),
    ),
    const DrawerElement(
      title: 'DOCS',
      route: kHomeRoute,
      icon: Icon(Icons.book_outlined),
    ),
    const DrawerElement(
      title: 'PROJECTS',
      route: kHomeRoute,
      icon: Icon(Icons.folder_copy_outlined),
    ),
  ];
  final List<DrawerElement> _secondList = <DrawerElement>[
    const DrawerElement(
      title: 'My profile',
      route: kUserRoute,
      icon: Icon(Icons.person_outline_outlined),
    ),
    const DrawerElement(
      title: 'Settings',
      route: kSettingsRoute,
      icon: Icon(Icons.settings_outlined),
    ),
  ];

  Drawer _drawer() => Drawer(
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
                              const Icon(Icons.logout_outlined),
                              'Logout',
                              () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _header(),
          ],
        ),
      );

  Widget _header() => SizedBox(
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
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Bojan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          // Added to handle overflow
                          maxLines:
                              1, // Ensure it doesn't wrap and uses ellipsis
                        ),
                        SizedBox(height: 4),
                        Text(
                          'FRI',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          overflow: TextOverflow.ellipsis,
                          // Added to handle overflow
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
                          _showSecondList
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
      );

  Widget _list(final List<DrawerElement> list, DrawerVisibleList listNr) =>
      ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          final DrawerElement item = list[index];
          return _listItem(item.icon, item.title, () {});
        },
      );

  ListTile _listItem(Icon icon, String title, VoidCallback onTap) => ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        dense: true,
        leading: icon,
        title: Text(title, style: const TextStyle(fontSize: 15.0)),
        onTap: onTap,
      );
}

class DrawerElement {
  const DrawerElement({
    required this.title,
    required this.route,
    required this.icon,
  });

  final String title;
  final String route;
  final Icon icon;

  bool isCurrnet(String route) => this.route == route;
}
