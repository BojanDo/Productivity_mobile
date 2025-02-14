import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';

import '../features/Projects/domain/entities/projects.dart';
import '../features/User/domain/entities/organizations.dart';
import '../features/User/domain/entities/users.dart';

class ProfilePicture extends StatelessWidget {
  final String text;
  final String? profilePicture;
  final bool isEnabled;

  const ProfilePicture._({
    required this.text,
    this.profilePicture,
    this.isEnabled = true,
  });

  factory ProfilePicture.user(User user, {bool isEnabled = true}) =>
      ProfilePicture._(
        text: '${user.firstname} ${user.lastname}',
        profilePicture: user.profilePicture,
        isEnabled: isEnabled,
      );

  factory ProfilePicture.organization(Organization organization,
          {bool isEnabled = true}) =>
      ProfilePicture._(
        text: organization.name,
        profilePicture: organization.profilePicture,
        isEnabled: isEnabled,
      );

  factory ProfilePicture.project(Project project, {bool isEnabled = true}) =>
      ProfilePicture._(
        text: project.title,
        profilePicture: project.profilePicture,
        isEnabled: isEnabled,
      );

  Widget get letterPicture => TextAvatar(
        text: text,
        shape: Shape.Rectangle,
        numberLetters: 2,
      );

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) {
      return Container(
        width: 40,
        height: 40,
        color: Colors.grey, // Gray square when disabled
      );
    }

    return profilePicture != null
        ? CachedNetworkImage(
            imageUrl: profilePicture!,
            placeholder: (BuildContext context, String url) => letterPicture,
            errorWidget: (BuildContext context, String url, Object error) =>
                letterPicture,
          )
        : letterPicture;
  }
}
