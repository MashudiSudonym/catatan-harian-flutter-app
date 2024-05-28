import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/full_screen_background.dart';
import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: FullScreenBackground(
        image: Assets.images.splashOnBoardBg.image().image,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                Flexible(
                  child: Assets.images.iconCatatanHarian
                      .image(
                        height: context.height * 0.25,
                      )
                      .onClick(
                        () =>
                            ref.read(routerProvider).pushNamed('sign-in-page'),
                      ),
                ),
                Flexible(
                  child: SizedBox(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
