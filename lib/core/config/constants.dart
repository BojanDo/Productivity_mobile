import 'package:flutter/material.dart';

import 'colors.dart';

const int kApiVersion = 1;

const String kBaseUrl = '<base-url>';
const String kApiUrl = '$kBaseUrl/api/v$kApiVersion';

const String kLoginUrl = '$kApiUrl/login';
const String kRegisterUrl = '$kApiUrl/register';
const String kUsersUrl = '$kApiUrl/users';
const String kOrganizationsUrl = '$kApiUrl/organizations';
const String kProjectsUrl = '$kApiUrl/projects';
const String kTasksUrl = '$kApiUrl/tasks';
const String kDocumentsUrl = '$kApiUrl/documents';
const String kCommentsUrl = '$kApiUrl/comments';
const String kNotificationsUrl = '$kApiUrl/notifications';
const String kInvitationUrl = '$kApiUrl/documents';

const BorderSide kBorderSide = BorderSide(
  color: kBorderColor,
);
