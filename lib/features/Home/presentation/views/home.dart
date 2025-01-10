import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../User/presentation/bloc/user_bloc.dart';
import 'dashboards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
        builder: (BuildContext context, UserState state) {
          if (state.user.organizationId == null) return const HomePageInner();
          return const DashboardsPage();
        },
      );
}

class HomePageInner extends StatelessWidget {
  const HomePageInner({super.key});

  @override
  Widget build(BuildContext context) => const Placeholder();
}
