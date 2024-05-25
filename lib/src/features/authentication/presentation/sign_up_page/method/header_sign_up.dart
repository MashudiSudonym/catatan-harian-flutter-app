import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> headerSignUp({
  required BuildContext context,
  required double radius,
}) =>
    [
      Text(
        'Sign Up',
        style: GoogleFonts.roboto(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
      ),
      verticalSpace(24),
      CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(
          'https://picsum.photos/${Random(100).nextInt(1000)}',
        ),
        backgroundColor: Colors.white.withOpacity(0.4),
      ),
      verticalSpace(24),
    ];
