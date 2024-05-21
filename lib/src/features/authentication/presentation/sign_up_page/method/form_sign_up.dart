import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/src/core/common/widget/custom_primary_button.dart';
import 'package:catatan_harian/src/core/common/widget/custom_secure_text_field_transparent.dart';
import 'package:catatan_harian/src/core/common/widget/custom_text_field_transparent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> formSignUp({
  required Function() signInButton,
  required VoidCallback? signUpButton,
  required WidgetRef ref,
  required TextEditingController usernameController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
}) =>
    [
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
        controller: confirmPasswordController,
      ),
      verticalSpace(16),
      CustomPrimaryButton(
        onPressed: signUpButton,
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
          ).onClick(signInButton),
        ],
      ),
    ];
