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
