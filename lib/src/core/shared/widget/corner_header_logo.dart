import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CornerHeaderLogo extends StatelessWidget {
  const CornerHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.50,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: Row(
        children: [
          Assets.images.iconCatatanHarian
              .image(
                height: 25,
              ),
          AutoSizeText(
            'Catatan Harian',
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
