import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String? labelText;
  final VoidCallback? onPressed;
  final Size? minimumSize;
  final Size? maximumSize;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? fontSize;

  const CustomPrimaryButton({
    super.key,
    this.labelText,
    this.onPressed,
    this.minimumSize,
    this.maximumSize,
    this.backgroundColor,
    this.foregroundColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.black,
        foregroundColor: foregroundColor ?? Colors.white,
        minimumSize: minimumSize ??
            Size(
              double.infinity,
              context.height / 18,
            ),
      ),
      child: AutoSizeText(
        labelText ?? 'primary',
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? 16,
        ),
      ),
    );
  }
}
