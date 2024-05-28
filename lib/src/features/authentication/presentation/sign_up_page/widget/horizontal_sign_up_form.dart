import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';

class HorizontalSignUpForm extends StatelessWidget {
  final List<Widget> header;
  final List<Widget> form;

  const HorizontalSignUpForm({
    super.key,
    required this.header,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              ...header,
            ],
          ),
        ),
        horizontalSpace(16),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              ...form,
              verticalSpace(16),
            ],
          ),
        ),
      ],
    );
  }
}
