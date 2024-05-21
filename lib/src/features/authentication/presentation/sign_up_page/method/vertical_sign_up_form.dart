import 'package:flutter/material.dart';

Widget verticalForm({
  required List<Widget> header,
  required List<Widget> form,
}) =>
    Column(
      children: [
        ...header,
        ...form,
      ],
    );
