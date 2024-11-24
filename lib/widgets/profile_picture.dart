import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';

import '../features/User/domain/entities/users.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key, required this.user});

  final User user;

  Widget get letterPicture =>
      TextAvatar(
        text: '${user.firstname} ${user.lastname}',
        shape: Shape.Rectangle,
        numberLetters: 2,
      );


  @override
  Widget build(BuildContext context) =>
      user.profilePicture != null
          ? CachedNetworkImage(
        imageUrl: user.profilePicture!,
        errorWidget: (BuildContext context, String url, Object error) =>
        letterPicture,
      )
          : letterPicture;
}
