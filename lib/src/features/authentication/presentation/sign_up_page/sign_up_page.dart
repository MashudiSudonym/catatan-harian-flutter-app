import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/corner_header_logo.dart';
import 'package:catatan_harian/src/core/common/widget/custom_primary_button.dart';
import 'package:catatan_harian/src/core/common/widget/custom_secure_text_field_transparent.dart';
import 'package:catatan_harian/src/core/common/widget/custom_text_field_transparent.dart';
import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends ConsumerWidget {
  SignUpPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        key: const PageStorageKey('signInEventList'),
        child: Stack(
          children: [
            Assets.images.signUpBg.image(
              fit: BoxFit.fill,
              width: context.width,
              height: context.height,
            ),
            const Positioned(
              top: 16,
              left: 0,
              child: CornerHeaderLogo(),
            ),
            Positioned(
              top: context.height * 0.1,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    Text(
                      'Sign In',
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    verticalSpace(24),
                    CircleAvatar(
                      radius: context.width * 0.18,
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/${Random(100).nextInt(1000)}',
                      ),
                      backgroundColor: Colors.white.withOpacity(0.4),
                    ),
                    verticalSpace(24),
                    CustomTextFieldTransparent(
                      labelText: 'username',
                      controller: usernameController,
                      maxLines: 1,
                      keyboardType: TextInputType.name,
                    ),
                    verticalSpace(16),
                    CustomTextFieldTransparent(
                      labelText: 'e-mail',
                      controller: emailController,
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    verticalSpace(16),
                    CustomSecureTextFieldTransparent(
                      labelText: 'password',
                      controller: passwordController,
                    ),
                    verticalSpace(16),
                    CustomSecureTextFieldTransparent(
                      labelText: 'confirm password',
                      controller: passwordController,
                    ),
                    verticalSpace(16),
                    CustomPrimaryButton(
                      onPressed: () {
                        ref.read(routerProvider).pushNamed('home-page');
                      },
                      labelText: 'Sign Up',
                    ),
                    verticalSpace(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          "Already have an account?",
                          style: GoogleFonts.roboto(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        horizontalSpace(8),
                        AutoSizeText(
                          "Sign in",
                          style: GoogleFonts.roboto(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ).onClick(() {
                          ref.read(routerProvider).pop();
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
