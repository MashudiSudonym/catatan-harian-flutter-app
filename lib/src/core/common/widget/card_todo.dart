import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTodo extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onClick;

  const CardTodo({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black12,
          width: 2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical:
              context.width < MinimumScreenSize.smallScreenWidth ? 24 : 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: AutoSizeText(
                title,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Flexible(
              child: AutoSizeText(
                subtitle,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    ).onClick(onClick);
  }
}
