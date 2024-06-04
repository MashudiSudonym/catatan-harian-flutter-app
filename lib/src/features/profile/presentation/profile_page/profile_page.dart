import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/src/features/profile/presentation/profile_page/method/content_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: () {
          context.showSnackBar('logout clicked');
        },
        label: AutoSizeText(
          'Logout',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ...contentProfile(
              imageProfileUrl:
                  'https://picsum.photos/${Random(100).nextInt(1000)}',
              userProfileName: 'Foo',
              userProfileEmail: 'email@email.email',
              userProfilePhone: '081234567890',
              editEmailOnClick: () {
                context.showSnackBar('edit email clicked');
              },
              editPhoneOnClick: () {
                context.showSnackBar('edit phone clicked');
              },
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
