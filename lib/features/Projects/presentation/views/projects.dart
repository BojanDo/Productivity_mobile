import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/config/routes.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/intinite_list.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../Tasks/presentation/views/tasks.dart';
import '../../../User/domain/entities/users.dart';
import '../../../User/domain/entities/users.dart';
import '../../../User/presentation/bloc/user_bloc.dart';
import '../../domain/entities/projects.dart';
import '../bloc/projects_bloc.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ProjectsBloc>(
        create: (BuildContext context) => sl<ProjectsBloc>(),
        child: const ProjectsPageInner(),
      );
}

class ProjectsPageInner extends StatefulWidget {
  const ProjectsPageInner({super.key});

  @override
  State<ProjectsPageInner> createState() => _ProjectsPageInnerState();
}

class _ProjectsPageInnerState extends State<ProjectsPageInner> {
  void _getProjects(){context.read<ProjectsBloc>().add(const ProjectsEvent.get());}
  void _openProject(ProjectFormMode mode,{Project? project}) {
    routeWithResult(
      context.read<AppBloc>().innerNavigator,
      kProjectRoute,
          (Object? result) {
        if (result is! bool) {
          return;
        }
        if (result) {
          _getProjects();
        }
      },
      <String, dynamic>{'mode': mode,'project':project},
    );
  }
  @override
  void initState() {
    _getProjects();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
        builder: (BuildContext context, UserState userState) =>
            BlocBuilder<ProjectsBloc, ProjectsState>(
          builder: (BuildContext context, ProjectsState state) => Scaffold(
            appBar: GlobalAppBar(
              title: 'Projects',
              count: state.whenOrNull(
                loaded: (Projects projects) => projects.total,
              ),
              create: userState.user.roleName != Role.owner
                  ? null
                  : () {
                _openProject(ProjectFormMode.create);
                    },
            ),
            body: Column(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                _skeletonizer(state),
              ],
            ),
          ),
        ),
      );

  Widget _skeletonizer(ProjectsState state) {
    final bool isEnabled = state.maybeMap<bool>(
      getting: (_) => true,
      orElse: () => false,
    );
    return Expanded(
      child: Skeletonizer(
        enabled: isEnabled,
        child: _projectsList(context, state.projects, isEnabled),
      ),
    );
  }

  Widget _projectsList(
    BuildContext context,
    Projects projects,
    bool isEnabled,
  ) =>
      ListView.builder(
        itemCount: projects.total,
        itemBuilder: (BuildContext context, int index) =>
            _listItem(projects.items[index], isEnabled),
      );

  Widget _listItem(Project project, bool isEnabled) => Container(
        color: kSecondaryBackgroundColor,
        child: Column(
          children: <Widget>[
            const Divider(height: 0),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: ProfilePicture.project(project, isEnabled: !isEnabled),
              ),
              title: Text(project.title),
              trailing: BlocBuilder<UserBloc, UserState>(
                builder: (BuildContext context, UserState state) =>
                    PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert), // Three dots button
                  onSelected: (String value) {
                    if (value == 'view') {
                      _openProject(ProjectFormMode.view,project: project);
                    } else if (value == 'edit') {
                      _openProject(ProjectFormMode.edit,project: project);
                    } else if (value == 'remove') {
                      context
                          .read<ProjectsBloc>()
                          .add(ProjectsEvent.delete(id: project.id));
                    }
                  },
                  offset: const Offset(0, 40),
                  itemBuilder: (BuildContext context) => (state.user.roleName !=
                          Role.owner)
                      ? <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'view',
                            height: 30, // Set fixed height for the item
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.remove_red_eye_outlined, size: 20),
                                SizedBox(width: 8),
                                Text('View info'),
                              ],
                            ),
                          ),
                        ]
                      : <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'edit',
                            height: 30, // Set fixed height for the item
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.edit, size: 20),
                                SizedBox(width: 8),
                                Text('Edit'),
                              ],
                            ),
                          ),
                          const PopupMenuDivider(),
                          // Divider line between options
                          const PopupMenuItem<String>(
                            value: 'remove',
                            height: 30, // Set fixed height for the item
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.delete, size: 20),
                                SizedBox(width: 8),
                                Text('Remove'),
                              ],
                            ),
                          ),
                        ],
                ),
              ),
              onTap: () {
                route(
                  context.read<AppBloc>().innerNavigator,
                  kTasksProjectRoute,
                  <String, dynamic>{
                    'project': project,
                  },
                );
              },
            ),
            const Divider(height: 0),
          ],
        ),
      );
}
