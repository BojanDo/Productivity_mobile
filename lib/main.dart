import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Pages',
    home: Scaffold(
      appBar: AppBar(title: const Text('Pages')),
      body: _buildRoutesList(),
    ),
  );

  Widget _buildRoutesList() {
    final List<Map<String, String>> routes = <Map<String, String>>[
      {'title': 'Home', 'description': ''},
      {'title': 'Login', 'description': ''},
      {'title': 'Register', 'description': ''},
      {'title': 'Notifications', 'description': 'displays notifications list'},
      {'title': 'Settings', 'description': 'settings list'},
      {'title': 'User info', 'description': 'user details'},
      {'title': 'Account', 'description': 'edit user account info'},
      {'title': 'Organization', 'description': 'edit/create organization form'},
      {'title': 'Documents', 'description': 'displays documents list'},
      {'title': 'Projects', 'description': 'displays projects list'},
      {'title': 'Project', 'description': 'edit/create project form'},
      {'title': 'Tasks', 'description': 'displays tasks list'},
      {'title': 'Task', 'description': 'edit/create/view task form'},
    ];

    return ListView.builder(
      itemCount: routes.length,
      itemBuilder: (BuildContext context, int index) {
        final Map<String, String> route = routes[index];
        return _route(route['title']!, route['description']!, context);
      },
    );
  }

  Widget _route(String title, String description, BuildContext context) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Reduced padding
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1.0)), // Underline
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  switch (title) {
                    case 'Home':
                      return const Test(title: 'Home Page');
                    case 'Login':
                      return const Test(title: 'Login Page');
                    case 'Register':
                      return const Test(title: 'Register Page');
                    case 'Settings':
                      return const Test(title: 'Settings Page');
                    case 'User info':
                      return const Test(title: 'User Info Page');
                    case 'Account':
                      return const Test(title: 'Account Page');
                    default:
                      return const Test(title: 'Default Page');
                  }
                },
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
    ),
    body: const Center(
      child: Text('This is a new page!'),
    ),
  );
}
