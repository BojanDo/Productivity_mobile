import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/profile_picture.dart';
import '../bloc/user_bloc.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
    builder: (BuildContext context, UserState state) => Scaffold(
      appBar: const GlobalAppBar(
        title: 'User info',
      ),
      body: Container(
        color: kSecondaryBackgroundColor,
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: ProfilePicture(user: state.user),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        '${state.user.firstname} ${state.user.lastname}',
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
                color: kBorderColor,
              ),
              children: <TableRow>[
                _buildTableRow('Job Title', state.user.jobTitle),
                _buildTableRow('Company', 'Company name'),
                _buildTableRow('Role', state.user.roleName!.displayName),
              ],
            ),
          ],
        ),
      ),
    ),
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
