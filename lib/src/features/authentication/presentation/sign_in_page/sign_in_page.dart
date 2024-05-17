import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/shared/misc/method.dart';
import 'package:catatan_harian/src/core/shared/widget/corner_header_logo.dart';
import 'package:catatan_harian/src/core/shared/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.signInBg.image(
            fit: BoxFit.fill,
            width: context.width,
          ),
          const CornerHeaderLogo(),
          Center(
            child: Container(
              width: context.width * 0.8,
              padding: const EdgeInsets.all(16),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Text(
                      'Welcome Back !',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ).expanded(),
                    verticalSpace(24),
                    CustomTextField(
                        labelText: 'e-mail',
                        controller: emailController,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
