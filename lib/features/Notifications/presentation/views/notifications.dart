import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/intinite_list.dart';
import '../../../../widgets/notifications_description.dart';
import '../../../../widgets/profile_picture.dart';
import '../../domain/entities/notifications.dart' as notif;
import '../bloc/notifications_bloc.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<NotificationsBloc>(
        create: (BuildContext context) => sl<NotificationsBloc>(),
        child: const NotificationsPageInner(),
      );
}

class NotificationsPageInner extends StatefulWidget {
  const NotificationsPageInner({super.key});

  @override
  State<NotificationsPageInner> createState() => _NotificationsPageInnerState();
}

class _NotificationsPageInnerState extends State<NotificationsPageInner> {
  @override
  void initState() {
    context.read<NotificationsBloc>().add(const NotificationsEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (BuildContext context, NotificationsState state) => Scaffold(
          appBar: GlobalAppBar(
            title: 'Notifications',
            count: state.whenOrNull(
              loaded: (notif.Notifications notifications, int page) =>
                  notifications.total,
            ),
          ),
          body: state.maybeWhen(
            orElse: () => _skeletonizer(state),
            error: () => const Center(
              child: Text(
                'There was an error loading your notifications',
              ), //TODO: do something nicer
            ),
          ),
        ),
      );

  Widget _skeletonizer(NotificationsState state) => Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Skeletonizer(
              enabled: state.maybeMap<bool>(
                getting: (_) => true,
                orElse: () => false,
              ),
              child: state.maybeWhen(
                getting: (notif.Notifications notifications) =>
                    _notificationsList(context, notifications, 1),
                loaded: (notif.Notifications notifications, int page) =>
                    _notificationsList(context, notifications, page),
                orElse: () => const SizedBox.shrink(),
              ),
            ),
          ),
        ],
      );

  Widget _notificationsList(
    BuildContext context,
    notif.Notifications notifications,
    int page,
  ) =>
      InfiniteList(
        padding: EdgeInsets.zero,
        count: notifications.items.length,
        total: notifications.total,
        itemBuilder: (BuildContext context, int index) =>
            _listItem(notifications.items[index]),
        loadNextData: () {
          context.read<NotificationsBloc>().add(
                NotificationsEvent.getNext(
                  currentNotifications: notifications,
                  page: page,
                ),
              );
        },
      );

  Widget _listItem(notif.Notification notification) => Container(
    color: kSecondaryBackgroundColor,
    child: Column(
      children: <Widget>[
        const Divider(height: 0),
        ListTile(
          leading: SizedBox(
            height: 40,
            width: 40,
            child: ProfilePicture.user(notification.user),
          ),
          dense: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _formatDate(notification.date),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              NotificationsDescription(
                description: notification.description,
              ),
            ],
          ),
          onTap: () async {},
        ),
        const Divider(height: 0),
      ],
    ),
  );

  /// Formats the date into a more readable format
  String _formatDate(String date) {
    // Parse the date string (assuming it's in ISO 8601 format: 'yyyy-MM-dd')
    final DateTime parsedDate = DateTime.parse(date);

    // Format the date as 'dd. MM. yyyy'
    return '${parsedDate.day.toString().padLeft(2, '0')}. '
        '${parsedDate.month.toString().padLeft(2, '0')}. '
        '${parsedDate.year}';
  }



}
