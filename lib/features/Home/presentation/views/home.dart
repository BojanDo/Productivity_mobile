import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/routes.dart';
import '../../../../widgets/app_bar.dart';
import '../../../App/presentation/bloc/app_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, String>> routes = <Map<String, String>>[
    <String, String>{'title': 'Home', 'description': '', 'route': '/'},
    <String, String>{
      'title': 'Settings',
      'description': 'settings list',
      'route': '/settings',
    },
    <String, String>{
      'title': 'User info',
      'description': 'user details',
      'route': '/user',
    },
    <String, String>{
      'title': 'Account',
      'description': 'edit user account info',
      'route': '/account',
    },
    <String, String>{
      'title': 'Organization',
      'description': 'edit/create organization form',
      'route': '/organization',
    },
    <String, String>{
      'title': 'Documents',
      'description': 'displays documents list',
      'route': '/documents',
    },
    <String, String>{
      'title': 'Projects',
      'description': 'displays projects list',
      'route': '/projects',
    },
    <String, String>{
      'title': 'Project',
      'description': 'edit/create project form',
      'route': '/project',
    },
    <String, String>{
      'title': 'Tasks',
      'description': 'displays tasks list',
      'route': '/tasks',
    },
    <String, String>{
      'title': 'Task',
      'description': 'edit/create/view task form',
      'route': '/task',
    },
  ];



  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: const GlobalAppBar(title: 'Home'),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (BuildContext context, int index) {
          final Map<String, String> route = routes[index];
          return _route(
              route['title']!, route['description']!, route['route']!, context);
        },
      ),
    );
  Widget _route(
      String title,
      String description,
      String routePath,
      BuildContext context,
      ) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        // Reduced padding
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey[300]!,
            ),
          ), // Underline
        ),
        child: GestureDetector(
          onTap: () {
            route(context.read<AppBloc>().innerNavigator, routePath);
          },
          child: Row(
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12, // Smaller font size for the description
                ),
              ),
            ],
          ),
        ),
      );
}


class Test extends StatelessWidget {
  final String title;

  const Test({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: GlobalAppBar(
      title: title,
    ),
    body: const Center(
      child: Text('This is a new page!'),
    ),
  );
}