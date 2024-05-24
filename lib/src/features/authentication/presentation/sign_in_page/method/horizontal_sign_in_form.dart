import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/method/welcome_text_sign_in.dart';
import 'package:flutter/material.dart';

Widget horizontalSignInForm({
  required List<Widget> form,
}) =>
    Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 64.0),
            child: welcomeTextSignIn(),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              ...form,
            ],
          ),
        ),
      ],
    );
