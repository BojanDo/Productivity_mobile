import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/intinite_list.dart';
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
  @override
  void initState() {
    context.read<ProjectsBloc>().add(const ProjectsEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ProjectsBloc, ProjectsState>(
        builder: (BuildContext context, ProjectsState state) => Scaffold(
          appBar: GlobalAppBar(
            title: 'Projects',
            count: state.whenOrNull(
              loaded: (Projects projects) => projects.total,
            ),
          ),
          body: Container(
            color: kSecondaryBackgroundColor,
            child: state.maybeWhen(
              orElse: () => _skeletonizer(state),
              error: () => const Center(
                child: Text('Error'),
              ),
            ),
          ),
        ),
      );

  Widget _skeletonizer(ProjectsState state) => Skeletonizer(
        enabled: state.maybeMap<bool>(
          getting: (_) => true,
          orElse: () => false,
        ),
        child: state.maybeWhen(
          getting: (Projects projects) => _projectsList(context, projects),
          loaded: (Projects projects) => _projectsList(context, projects),
          orElse: () => const SizedBox.shrink(),
        ),
      );

  Widget _projectsList(BuildContext context, Projects projects) =>
      ListView.builder(
        itemCount: projects.items.length,
        itemBuilder: (BuildContext context, int index) =>
            _listItem(projects.items[index]),
      );

  ListTile _listItem(Project project) => ListTile(
    visualDensity: const VisualDensity(vertical: -4),
    dense: true,
    leading: SizedBox(
      width: 50, // Fixed width
      height: 50, // Fixed height
      child: project.profilePicture != null
          ? Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), // Optional: slightly rounded corners
          image: DecorationImage(
            image: NetworkImage(project.profilePicture!),
            fit: BoxFit.cover, // Ensures the image covers the square box
          ),
          color: Colors.grey.shade200, // Placeholder color
        ),
      )
          : Container(
        color: Colors.grey.shade200,
        child: const Icon(Icons.image_not_supported, size: 24),
      ),
    ),
    title: Text(project.title),
    onTap: () async {},
  );



}
