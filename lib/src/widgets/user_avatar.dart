import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

import '../util.dart';
import 'inherited_chat_theme.dart';

/// Renders user's avatar or initials next to a message
class UserAvatar extends StatelessWidget {
  /// Creates user avatar
  const UserAvatar({
    Key? key,
    required this.author,
    this.onAvatarTap,
  }) : super(key: key);

  /// Author to show image and name initials from
  final types.User author;

  /// Called when user taps on an avatar
  final void Function(types.User)? onAvatarTap;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsetsDirectional.only(end: 8),
      child: GestureDetector(
        onTap: () => onAvatarTap?.call(author),
        child: ProfilePicture(
          name: author.displayName ?? 'Unknown',
          radius: 16.0,
          fontsize: 9.0,
        ),
      ),
    );
  }
}
