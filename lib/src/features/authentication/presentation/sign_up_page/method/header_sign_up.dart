import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> headerSignUp({required BuildContext context}) => [
      Text(
        'Sign In',
        style: GoogleFonts.roboto(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
      ),
      verticalSpace(24),
      CircleAvatar(
        radius: context.height > MinimumScreenSize.smallScreenHeight
            ? context.width * 0.18
            : context.height * 0.18,
        backgroundImage: NetworkImage(
          'https://picsum.photos/${Random(100).nextInt(1000)}',
        ),
        backgroundColor: Colors.white.withOpacity(0.4),
      ),
      verticalSpace(24),
    ];
