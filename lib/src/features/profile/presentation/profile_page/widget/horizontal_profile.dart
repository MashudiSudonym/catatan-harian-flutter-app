import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/features/profile/presentation/profile_page/method/content_profile.dart';
import 'package:flutter/material.dart';

class HorizontalProfile extends StatelessWidget {
  final String? imageProfileUrl;
  final String? userProfileName;
  final String? userProfileEmail;
  final String? userProfilePhone;
  final Function()? editEmailOnClick;
  final Function()? editPhoneOnClick;
  final Function()? logoutOnClick;

  const HorizontalProfile({
    super.key,
    required this.imageProfileUrl,
    required this.userProfileName,
    required this.userProfileEmail,
    required this.userProfilePhone,
    required this.editEmailOnClick,
    required this.editPhoneOnClick,
    required this.logoutOnClick,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MinimumScreenSize.smallScreenHeight.toDouble(),
      ),
      children: [
        ...contentProfile(
          imageProfileUrl: 'https://picsum.photos/${Random(100).nextInt(1000)}',
          userProfileName: 'Foo',
          userProfileEmail: 'email@email.email',
          userProfilePhone: '081234567890',
          editEmailOnClick: () {
            context.showSnackBar('edit email clicked');
          },
          editPhoneOnClick: () {
            context.showSnackBar('edit phone clicked');
          },
          logoutOnClick: () {
            context.showSnackBar('logout clicked');
          },
          context: context,
        ),
      ],
    );
  }
}
