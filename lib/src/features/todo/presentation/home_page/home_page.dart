import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/method/button_create_task.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/method/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: buttonCreateTask(
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: header(
                onPressed: () {},
                height: context.height > MinimumScreenSize.smallScreenHeight
                    ? context.height * 0.15
                    : context.height * 0.2,
                radius: context.height > MinimumScreenSize.smallScreenHeight
                    ? context.width * 0.06
                    : context.height * 0.06,
                username: 'Fin',
                imageProfileUrl:
                    'https://picsum.photos/${Random(100).nextInt(1000)}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
