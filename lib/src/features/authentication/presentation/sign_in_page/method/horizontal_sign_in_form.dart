import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget horizontalSignInForm({
  required List<Widget> form,
}) =>
    Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
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
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              ...form,
            ],
          ),
        ),
      ],
    );
