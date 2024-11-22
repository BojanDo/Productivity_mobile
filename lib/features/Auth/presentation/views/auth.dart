import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/injection_container.dart';
import '../bloc/auth_bloc.dart';
import 'login.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) => BlocProvider<AuthBloc>(
        create: (BuildContext context) => sl<AuthBloc>(),
        child: Builder(
          builder: (BuildContext context) => PageView(
              controller: context.read<AuthBloc>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const <Widget>[
                LoginPage(),
                Text('Register'),
              ],
            ),
        ),
      );
}
