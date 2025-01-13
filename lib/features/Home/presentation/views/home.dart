import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/config/routes.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
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
  Widget build(BuildContext context) => Scaffold(
        appBar: const GlobalAppBar(title: 'Home'),
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Head over to settings to join or create an organization',
                  textAlign: TextAlign.center,
                  style: TextStyle(color:Theme.of(context).colorScheme.onSecondary ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    routePopAllPushReplacement(sl<AppBloc>().innerNavigator, kSettingsRoute);
                  },
                  style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.disabled)) {
                            return kPrimaryColor.withOpacity(0.4);
                          }
                          return kPrimaryColor;
                        }),
                        foregroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) => Colors.white,
                        ),
                      ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Go to Settings',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
