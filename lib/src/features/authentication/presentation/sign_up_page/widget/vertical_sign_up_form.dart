import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';

class VerticalSignUpForm extends StatelessWidget {
  final List<Widget> header;
  final List<Widget> form;

  const VerticalSignUpForm({
    super.key,
    required this.header,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...header,
        ...form,
        verticalSpace(16),
      ],
    );
  }
}
