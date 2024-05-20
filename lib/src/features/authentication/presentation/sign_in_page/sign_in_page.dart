import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/corner_header_logo.dart';
import 'package:catatan_harian/src/core/common/widget/custom_text_field_transparent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          key: const PageStorageKey('signInEventList'),
          child: Stack(
            children: [
              Assets.images.signInBg.image(
                fit: BoxFit.fill,
                width: context.width,
                height: context.height,
              ),
              const Positioned(
                top: 0,
                left: 0,
                child: CornerHeaderLogo(),
              ),
              Positioned(
                top: context.height * 0.3,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Text(
                        'Welcome Back !',
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      verticalSpace(24),
                      CustomTextFieldTransparent(
                        labelText: 'e-mail',
                        controller: emailController,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
