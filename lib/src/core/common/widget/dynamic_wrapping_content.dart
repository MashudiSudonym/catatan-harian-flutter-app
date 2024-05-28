import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';

class DynamicWrappingContent extends StatelessWidget {
  final List<Widget> children;

  const DynamicWrappingContent({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return context.height > MinimumScreenSize.smallScreenHeight
        ? Column(
            children: [
              ...children,
            ],
          )
        : ListView(
            children: [
              ...children,
            ],
          );
  }
}
