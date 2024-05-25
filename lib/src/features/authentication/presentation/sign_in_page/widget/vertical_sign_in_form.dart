import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/widget/welcome_text_sign_in.dart';
import 'package:flutter/material.dart';

class VerticalSignInForm extends StatelessWidget {
  final List<Widget> form;

  const VerticalSignInForm({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WelcomeTextSignIn(),
        verticalSpace(24),
        ...form,
      ],
    );
  }
}
