import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget header({
  required Function() onPressed,
  required double? height,
  required double? radius,
  required String? username,
  required String? imageProfileUrl,
}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.4).withOpacity(0.2),
            offset: const Offset(0, 6),
            blurRadius: 6,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            'Hello $username,',
            style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          CircleAvatar(
            radius: radius,
            backgroundImage: NetworkImage(
              imageProfileUrl ??
                  'https://picsum.photos/${Random(100).nextInt(1000)}',
            ),
            backgroundColor: Colors.white.withOpacity(0.4),
          ).onClick(onPressed),
        ],
      ),
    );
