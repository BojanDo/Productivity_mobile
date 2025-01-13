import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/form.dart';
import '../../../../widgets/image_picker.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/projects.dart';
import '../bloc/projects_bloc.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({
    super.key,
    required this.mode,
    this.project,
  });

  final ProjectFormMode mode;
  final Project? project;

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  late ProjectFormBloc projectFormBloc;
  late bool isEnabled;

  @override
  void initState() {
    projectFormBloc = sl<ProjectFormBloc>(
      param1: widget.mode,
      param2: widget.project,
    );
    isEnabled = widget.mode != ProjectFormMode.view;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider<ProjectFormBloc>.value(
        value: projectFormBloc,
        child: GlobalForm<ProjectFormBloc>(
          isViewOnly: !isEnabled,
          title: 'Project',
          onSuccess: isEnabled
              ? () {
                  routePopWithResult(sl<AppBloc>().innerNavigator,true);
                }
              : null,
          formBloc: projectFormBloc,
          fields: _fields(isEnabled, projectFormBloc),
        ),
      );

  List<Widget> _fields(bool isEnabled, ProjectFormBloc projectFormBloc) =>
      <Widget>[
        ImagePickerFieldBlocBuilder(
          isEnabled: isEnabled,
          fileFieldBloc: projectFormBloc.profilePicture,
          decoration: const InputDecoration(
            labelText: 'Project picture',
          ),
        ),
        TextFieldBlocBuilder(
          textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
            Theme.of(context).colorScheme.onSecondary,
          ),
          isEnabled: isEnabled,
          textFieldBloc: projectFormBloc.title,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: 'Project name',
            prefixIcon: Icon(Icons.dashboard_outlined),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        TextFieldBlocBuilder(
          textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
            Theme.of(context).colorScheme.onSecondary,
          ),
          isEnabled: isEnabled,
          minLines: 1,
          maxLines: 10,
          textFieldBloc: projectFormBloc.description,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: 'Description',
            prefixIcon: Icon(Icons.notes_outlined),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
      ];
}
