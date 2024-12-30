import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/intinite_list.dart';
import '../../../../widgets/profile_picture.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/users.dart';
import '../bloc/user_bloc.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

final Faker _faker = Faker();
final List<Organization> organizations = List<Organization>.generate(
  15,
  (int index) => Organization(
    id: index,
    name: _faker.lorem.words(2).join(' '),
    description: faker.lorem.sentences(6).join(' '),
  ),
);

class _UserInfoState extends State<UserInfo> {
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
                _userInfo(state.user),
                _userInvitations(),
              ],
            ),
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
                      child: ProfilePicture(user: user),
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
              color: kBorderColor,
            ),
            children: <TableRow>[
              _buildTableRow('Job Title', user.jobTitle),
              _buildTableRow('Company', 'Company name'),
              _buildTableRow('Role', user.roleName!.displayName),
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

  Widget _userInvitations() => Expanded(
    child: InfiniteList(
      count: organizations.length,
      total: organizations.length,
      itemBuilder: (BuildContext context, int index) =>
          _invitationListItem(organizations[index]),
      loadNextData: () {},
      padding: EdgeInsets.zero,
    ),
  );

  Widget _invitationListItem(Organization organization) => ListTile(
    visualDensity: const VisualDensity(vertical: -4),
    dense: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            organization.name,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.check, color: Colors.green),
              onPressed: () {
                // Action for accept button
              },
            ),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.red),
              onPressed: () {
                // Action for decline button
              },
            ),
          ],
        ),
      ],
    ),
    onTap: () async {
      // Action on tap
    },
  );

}
