import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/widget/welcome_text_sign_in.dart';
import 'package:flutter/material.dart';

class HorizontalSignInForm extends StatelessWidget {
  final List<Widget> form;
  const HorizontalSignInForm({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(bottom: 64.0),
            child: WelcomeTextSignIn(),
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
  }
}
