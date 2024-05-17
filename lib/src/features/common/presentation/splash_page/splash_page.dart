import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.splashOnBoardBg.image(
            fit: BoxFit.fill,
            width: context.width,
          ),
          Center(
            child: Container(
              height: context.height * 0.15,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.iconCatatanHarian
                      .image(
                        height: context.height * 0.5,
                      )
                      .onClick(
                        () =>
                            ref.read(routerProvider).pushNamed('sign-in-page'),
                      ),
                  SizedBox(
                    width: context.width / 2,
                    child: DefaultTextStyle(
                      style: GoogleFonts.inter(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Catatan Harian',
                            speed: const Duration(
                              milliseconds: 200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
