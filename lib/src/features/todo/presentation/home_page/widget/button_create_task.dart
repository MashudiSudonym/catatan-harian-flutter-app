import 'dart:ui';

import 'package:catatan_harian/src/core/common/widget/custom_primary_button.dart';
import 'package:flutter/material.dart';

class ButtonCreateTask extends StatelessWidget {
  final VoidCallback? onPressed;

  const ButtonCreateTask({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFEDBE7D).withOpacity(0.2),
            offset: const Offset(0, 50),
            blurRadius: 20,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: CustomPrimaryButton(
        labelText: 'Create New Task',
        onPressed: onPressed,
        backgroundColor: const Color(0xFF9747FF),
        minimumSize: const Size.fromHeight(58),
        fontSize: 18,
      ),
    );
  }
}
