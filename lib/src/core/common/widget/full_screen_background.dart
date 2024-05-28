import 'package:flutter/material.dart';

class FullScreenBackground extends StatelessWidget {
  final ImageProvider<Object> image;
  final Widget? child;

  const FullScreenBackground({
    super.key,
    required this.image,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.fill,
        ),
      ),
      child: child ?? const Placeholder(),
    );
  }
}
