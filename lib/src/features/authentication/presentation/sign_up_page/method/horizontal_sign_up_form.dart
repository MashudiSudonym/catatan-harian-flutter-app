import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';

Widget horizontalSignUpForm({
  required List<Widget> header,
  required List<Widget> form,
}) =>
    Row(
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
