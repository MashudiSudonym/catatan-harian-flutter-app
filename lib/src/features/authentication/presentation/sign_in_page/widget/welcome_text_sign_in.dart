import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeTextSignIn extends StatelessWidget {
  const WelcomeTextSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      'Welcome Back !',
      style: GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: Colors.black,
      ),
    );
  }
}
