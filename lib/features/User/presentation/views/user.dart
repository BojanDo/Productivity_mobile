import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/profile_picture.dart';
import '../../domain/entities/users.dart';
import '../bloc/user_bloc.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
        builder: (BuildContext context, UserState state) => Scaffold(
          appBar: const GlobalAppBar(
            title: 'User info',
          ),
          body: Container(
            color: Theme.of(context).colorScheme.secondary,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: _userInfo(state.user),
          ),
        ),
      );

  Widget _userInfo(User user) => Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ProfilePicture.user(user),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      '${user.firstname} ${user.lastname}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Table(
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(),
              1: FlexColumnWidth(2),
            },
            border: TableBorder.all(
              color: Theme.of(context).dividerTheme.color!,
            ),
            children: <TableRow>[
              _buildTableRow('Job Title', user.jobTitle),
              _buildTableRow('Company', 'Company name'),//TODO: add organization display
              _buildTableRow('Role', user.roleName.displayName),
            ],
          ),
        ],
      );

  TableRow _buildTableRow(String label, String value) => TableRow(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(value),
          ),
        ],
      );
}
