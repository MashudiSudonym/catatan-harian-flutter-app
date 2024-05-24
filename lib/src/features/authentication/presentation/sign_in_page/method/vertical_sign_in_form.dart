import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/method/welcome_text_sign_in.dart';
import 'package:flutter/material.dart';

Widget verticalSignInForm({
  required List<Widget> form,
}) =>
    Column(
      children: [
        welcomeTextSignIn(),
        verticalSpace(24),
        ...form,
      ],
    );
