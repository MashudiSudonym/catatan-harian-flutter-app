import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> contentProfile({
  required String? imageProfileUrl,
  required String? userProfileName,
  required String? userProfileEmail,
  required String? userProfilePhone,
  required Function()? editEmailOnClick,
  required Function()? editPhoneOnClick,
  required Function()? logoutOnClick,
  required BuildContext context,
}) =>
    [
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
                Flexible(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          imageProfileUrl ??
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
                ),
                verticalSpace(16),
                Flexible(
                  child: AutoSizeText(
                    userProfileName ?? 'your name',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
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
        child: ListView(
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
                Flexible(
                  child: AutoSizeText(
                    userProfileEmail ?? '-',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Flexible(
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                    size: 16,
                  ).onClick(
                    editEmailOnClick ?? () {},
                  ),
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
                Flexible(
                  child: AutoSizeText(
                    userProfilePhone ?? '-',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Flexible(
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                    size: 16,
                  ).onClick(
                    editEmailOnClick ?? () {},
                  ),
                ),
              ],
            ),
            verticalSpace(context.height * 0.4),
            CustomPrimaryButton(
              backgroundColor: Colors.red[700],
              labelText: 'Logout',
              onPressed: logoutOnClick,
              minimumSize: Size(
                double.infinity,
                context.height < MinimumScreenSize.smallScreenHeight
                    ? 58
                    : (context.height / 18),
              ),
            ),
          ],
        ),
      ),
    ];
