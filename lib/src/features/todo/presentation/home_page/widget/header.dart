import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final Function() onPressed;
  final double? height;
  final double? radius;
  final String? username;
  final String? imageProfileUrl;

  const Header({
    super.key,
    required this.onPressed,
    required this.height,
    required this.radius,
    required this.username,
    required this.imageProfileUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        boxShadow: [
          BoxShadow(
            color: Colors.amberAccent.withOpacity(0.25),
            offset: const Offset(0, -60),
            blurRadius: 25,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: AutoSizeText(
              'Hello $username,',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Flexible(
            child: CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(
                imageProfileUrl ??
                    'https://picsum.photos/${Random(100).nextInt(1000)}',
              ),
              backgroundColor: Colors.white.withOpacity(0.4),
            ).onClick(onPressed),
          ),
        ],
      ),
    );
  }
}
