import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/functions/routes.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../User/domain/entities/organizations.dart';
import '../../../User/presentation/bloc/user_bloc.dart';
import '../../../lifecycledemo/first.dart';
import '../../../lifecycledemo/second.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/offline/offline_bloc.dart';
import '../widgets/box.dart';

class OfflineOrganizationsPage extends StatefulWidget {
  const OfflineOrganizationsPage({super.key});

  @override
  State<OfflineOrganizationsPage> createState() =>
      _OfflineOrganizationsPageState();
}

class _OfflineOrganizationsPageState extends State<OfflineOrganizationsPage> {
  @override
  void initState() {
    context.read<OfflineBloc>().add(const OfflineEvent.get());
    super.initState();
  }

  void _toOrganizationPage(
    Organization? organization,
    OrganizationFormMode mode,
  ) {
    context.read<OfflineBloc>().add(
          OfflineEvent.loadOrganization(
            organization: organization,
            mode: mode,
          ),
        );
    animateToPage(
      context.read<AuthBloc>().pageController,
      3,
    );
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<OfflineBloc, OfflineState>(
        builder: (BuildContext context, OfflineState state) {
          final bool isEnabled = state.maybeMap<bool>(
            getting: (_) => true,
            orElse: () => false,
          );
          return Box(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Skeletonizer(
                enabled: isEnabled,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Organizations',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ...List.generate(
                      state.organizations.items.length,
                      (int index) {
                        final Organization organization =
                            state.organizations.items[index];
                        return ListTile(
                          leading: SizedBox(
                            width: 40,
                            height: 40,
                            child: ProfilePicture.organization(
                              organization,
                              isEnabled: !isEnabled,
                            ),
                          ),
                          title: Text(
                            organization.name,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                          onTap: () {
                            _toOrganizationPage(
                              organization,
                              OrganizationFormMode.edit,
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: _button('Create organization', () {
                        _toOrganizationPage(null, OrganizationFormMode.create);
                      }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        jumpToPage(
                          context.read<AuthBloc>().pageController,
                          0,
                        );
                      },
                      child: Text(
                        'Continue in online mode',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const FirstDemoPage(),
                          ),
                        );
                      },
                      child: Text(
                        'First LifeCycle demo page',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SecondDemoPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Second LifeCycle demo page',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );

  Widget _button(String text, VoidCallback action) => ElevatedButton(
        onPressed: action,
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
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      );
}
