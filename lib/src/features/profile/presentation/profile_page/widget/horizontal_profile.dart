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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        ...contentProfile(
          imageProfileUrl: imageProfileUrl,
          userProfileName: userProfileName,
          userProfileEmail: userProfileEmail,
          userProfilePhone: userProfilePhone,
          editEmailOnClick: editEmailOnClick,
          editPhoneOnClick: editPhoneOnClick,
          logoutOnClick: logoutOnClick,
          context: context,
        ),
      ],
    );
  }
}
