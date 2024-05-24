import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/src/core/common/widget/custom_primary_button.dart';
import 'package:catatan_harian/src/core/common/widget/custom_secure_text_field_transparent.dart';
import 'package:catatan_harian/src/core/common/widget/custom_text_field_transparent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> formSignIn({
  required Function() signUpButton,
  required VoidCallback? signInButton,
  required WidgetRef ref,
  required TextEditingController emailController,
  required TextEditingController passwordController,
}) =>
    [
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
      CustomPrimaryButton(
        onPressed: signInButton,
        labelText: 'Sign In',
      ),
      verticalSpace(32),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AutoSizeText(
              "Don't have an account?",
              style: GoogleFonts.roboto(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          horizontalSpace(8),
          AutoSizeText(
            "Sign up",
            style: GoogleFonts.roboto(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ).onClick(signUpButton),
        ],
      ),
    ];
