import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget verticalSignInForm({
  required List<Widget> form,
}) =>
    Column(
      children: [
        Text(
          'Welcome Back !',
          style: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        verticalSpace(24),
        ...form,
      ],
    );
