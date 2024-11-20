import 'package:flutter/material.dart';

import 'core/config/theme_data.dart';
import 'core/services/injection_container.dart';
import 'features/Auth/presentation/views/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initUtils();
  initFeatures();
  initBlocs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*@override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: <SingleChildWidget>[

        ],
        child: MaterialApp(
          title: 'Pages',
          routes: <String, WidgetBuilder>{
          },
          home: Scaffold(
            appBar: AppBar(title: const Text('Pages')),
            body: _buildRoutesList(),
          ),
        ),
      );*/
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Pages',
        theme: theme,
        routes: <String, WidgetBuilder>{},
        home: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications_none_outlined),
                onPressed: () {
                  // Handle notification button action
                },
              ),
            ],
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Handle hamburger button action
              },
            ),
          ),
          body: PopScope(
            canPop: false,
            child: Navigator(
              onGenerateRoute: (RouteSettings settings) {
                WidgetBuilder builder;
                switch (settings.name) {
                  case '/':
                    builder = (BuildContext context) => _buildRoutesList();
                    break;
                  case '/auth':
                    builder = (BuildContext context) => AuthPage();
                    break;
                  default:
                    builder = (BuildContext context) => Test(title: 'Page');
                }
                return MaterialPageRoute(builder: builder);
              },
            ),
          ),
        ),
      );

  Widget _buildRoutesList() {
    final List<Map<String, String>> routes = <Map<String, String>>[
      <String, String>{'title': 'Home', 'description': ''},
      <String, String>{'title': 'Auth', 'description': 'login and register'},
      <String, String>{
        'title': 'Notifications',
        'description': 'displays notifications list',
      },
      <String, String>{'title': 'Settings', 'description': 'settings list'},
      <String, String>{'title': 'User info', 'description': 'user details'},
      <String, String>{
        'title': 'Account',
        'description': 'edit user account info',
      },
      <String, String>{
        'title': 'Organization',
        'description': 'edit/create organization form',
      },
      <String, String>{
        'title': 'Documents',
        'description': 'displays documents list',
      },
      <String, String>{
        'title': 'Projects',
        'description': 'displays projects list',
      },
      <String, String>{
        'title': 'Project',
        'description': 'edit/create project form',
      },
      <String, String>{'title': 'Tasks', 'description': 'displays tasks list'},
      <String, String>{
        'title': 'Task',
        'description': 'edit/create/view task form',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Pages'),),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (BuildContext context, int index) {
          final Map<String, String> route = routes[index];
          return _route(route['title']!, route['description']!, context);
        },
      ),
    );
  }

  Widget _route(String title, String description, BuildContext context) =>
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) {
                  switch (title) {
                    case 'Auth':
                      return const AuthPage();

                    default:
                      return Test(title: '$title Page');
                  }
                },
              ),
            );
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
        appBar: AppBar(
          title: Text(title),
          leading: null, // Remove default back button
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('This is a new page!'),
        ),
      );
}
