import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: context.height * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.signInBg.image().image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: SizedBox(
                  height: context.height * 0.2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              'https://picsum.photos/${Random(100).nextInt(1000)}',
                            ),
                            backgroundColor: Colors.white.withOpacity(0.4),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.black87.withOpacity(0.6),
                              child: Assets.images.editImageIcon.svg(),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(16),
                      AutoSizeText(
                        'FOO BAR',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: context.height * 0.65,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Email',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  verticalSpace(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        'useremail@email.email',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const Icon(
                        Icons.edit_outlined,
                        color: Colors.black,
                        size: 16,
                      ).onClick(
                        () {
                          context.showSnackBar('Edit email pop up');
                        },
                      ),
                    ],
                  ),
                  verticalSpace(16),
                  AutoSizeText(
                    'Phone',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  verticalSpace(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        '0856123123123',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const Icon(
                        Icons.edit_outlined,
                        color: Colors.black,
                        size: 16,
                      ).onClick(
                        () {
                          context.showSnackBar('Edit phone pop up');
                        },
                      ),
                    ],
                  ),
                  verticalSpace(120),
                  CustomPrimaryButton(
                    backgroundColor: Colors.red[700],
                    labelText: 'Logout',
                    onPressed: () {
                      context.showSnackBar('Logout');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
