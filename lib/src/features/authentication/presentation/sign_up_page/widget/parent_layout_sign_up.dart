import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/core/common/widget/corner_header_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ParentLayoutSignUp extends StatelessWidget {
  final Widget? child;
  const ParentLayoutSignUp({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          const CornerHeaderLogo(),
          verticalSpace(context.height * 0.15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: child,
          ),
        ],
      ),
    );
  }
}
