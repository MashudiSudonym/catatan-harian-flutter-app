import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/features/profile/presentation/profile_page/widget/horizontal_profile.dart';
import 'package:catatan_harian/src/features/profile/presentation/profile_page/widget/vertical_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: AdaptiveLayout(
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.small: SlotLayout.from(
                key: const Key('Profile in small'),
                builder: (_) => VerticalProfile(
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
                  logoutOnClick: () {
                    context.showSnackBar('logout clicked');
                  },
                ),
              ),
              Breakpoints.mediumAndUp: SlotLayout.from(
                key: const Key('Profile in medium and up'),
              builder: (_) => HorizontalProfile(
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
                  logoutOnClick: () {
                    context.showSnackBar('logout clicked');
                  },
                ),
              ),
            },
          ),
        ),
      ),
    );
  }
}
