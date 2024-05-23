import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/method/button_create_task.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/method/card_categories.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/method/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = [
      const Color(0xFFB4C4FF),
      const Color(0xFFCFF3E9),
      const Color(0xFF9747FF),
      const Color(0xFFEDBE7D),
    ];
    final icons = [
      Assets.images.projectsIcon.svg(),
      Assets.images.worksIcon.svg(),
      Assets.images.dailyTasksIcon.svg(),
      Assets.images.groceriesIcon.svg(),
    ];
    final categories = [
      'Projects',
      'Works',
      'Daily Tasks',
      'Groceries',
    ];

    final totalCountTasks = [
      '2',
      '4',
      '5',
      '0',
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: context.height > MinimumScreenSize.smallScreenHeight
                    ? context.height * 0.1 + 16
                    : context.height * 0.2 + 16,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                      left: 16.0,
                      right: 16.0,
                    ),
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                        4,
                        (index) {
                          return cardCategories(
                            color: colors[index],
                            icon: icons[index],
                            category: categories[index],
                            totalCountTask: totalCountTasks[index],
                            onPressed: () {
                              context.showSnackBar(
                                'Show List of ${categories[index]}',
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: buttonCreateTask(
                onPressed: () {
                  context.showSnackBar('Create New Task Page');
                },
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: header(
                onPressed: () {
                  context.showSnackBar('Profile Page');
                },
                height: context.height > MinimumScreenSize.smallScreenHeight
                    ? context.height * 0.1
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
