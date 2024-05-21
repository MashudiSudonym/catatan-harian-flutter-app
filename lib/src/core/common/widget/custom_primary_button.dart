import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String labelText;
  final VoidCallback? onPressed;
  const CustomPrimaryButton({
    super.key,
    required this.labelText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        minimumSize: const Size(
          double.infinity,
          44,
        ),
      ),
      child: AutoSizeText(
        labelText,
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
