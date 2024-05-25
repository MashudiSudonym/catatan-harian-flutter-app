import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';

Widget verticalSignUpForm({
  required List<Widget> header,
  required List<Widget> form,
}) =>
    Column(
      children: [
        ...header,
        ...form,
        verticalSpace(16),
      ],
    );
