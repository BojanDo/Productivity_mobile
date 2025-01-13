import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/functions/routes.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../User/domain/entities/organizations.dart';
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

  @override
  Widget build(BuildContext context) => BlocBuilder<OfflineBloc, OfflineState>(
        builder: (BuildContext context, OfflineState state) {
          final bool isEnabled = state.maybeMap<bool>(
            getting: (_) => true,
            orElse: () => false,
          );
          return Box(
            child: Skeletonizer(
              enabled: isEnabled,
              child: Column(
                children: [
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
                        onTap: () {},
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: Add your "Create organization" action here.
                    },
                    child: Text(
                      'Create organization',
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
                      animateToPage(
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
                    height: 16,
                  ),
                ],
              ),
            ),
          );
        },
      );
}
