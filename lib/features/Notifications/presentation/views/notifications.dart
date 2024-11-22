import 'package:flutter/material.dart';

import '../../../../widgets/app_bar.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: GlobalAppBar(title: 'Notifications',count: 10,),
        body: Center(
          child: Text('Centered text'),
        ),
      );
}
