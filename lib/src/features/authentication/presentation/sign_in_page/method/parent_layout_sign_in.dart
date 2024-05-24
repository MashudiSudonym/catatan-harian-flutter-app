import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/core/common/widget/corner_header_logo.dart';
import 'package:flutter/material.dart';

Widget parentLayoutSignIn({
  required BuildContext context,
  double? topContentPadding,
  required Widget content,
}) =>
    Center(
      child: ListView(
        children: [
          const CornerHeaderLogo(),
          verticalSpace(context.height * 0.25),
          Padding(
            padding: EdgeInsets.only(
              bottom: 32,
              left: 32,
              right: 32,
              top: topContentPadding ?? 0,
            ),
            child: content,
          ),
        ],
      ),
    );
