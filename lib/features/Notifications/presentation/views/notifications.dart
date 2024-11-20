import 'package:flutter/material.dart';

import '../../../../widgets/app_bar.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: GlobalAppBar(title: 'Notifications',count: 10,),
        body: Center(
          child: Text('Centered text'),
        ),
      );
}
