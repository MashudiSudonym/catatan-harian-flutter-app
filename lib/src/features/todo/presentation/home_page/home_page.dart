import 'dart:math';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/widget/button_create_task.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/widget/card_categories.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

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
      floatingActionButton: Visibility(
        visible: context.height < MinimumScreenSize.smallScreenHeight,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF9747FF),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
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
                    child: Expanded(
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          4,
                          (index) {
                            return CardCategories(
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
                  ),
                  verticalSpace(16),
                  Expanded(
                    child: context.height > 380
                        ? Padding(
                            padding: EdgeInsets.only(
                              top: 8.0,
                              left: 16,
                              right: 16,
                              bottom: context.height >
                                      MinimumScreenSize.smallScreenHeight
                                  ? 84
                                  : 16,
                            ),
                            child: GridView(
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 480,
                                childAspectRatio: 3,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                              ),
                              shrinkWrap: true,
                              children: List.generate(
                                24,
                                (index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.black12,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: context.width <
                                                MinimumScreenSize
                                                    .smallScreenWidth
                                            ? 24
                                            : 32,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              'Title',
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: AutoSizeText(
                                              'Sub Title',
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        : AutoSizeText(
                            'Recent Task',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                            ),
                          ).onClick(
                            () {
                              context.showSnackBar('Show all Task');
                            },
                          ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: context.height > MinimumScreenSize.smallScreenHeight,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonCreateTask(
                  onPressed: () {
                    context.showSnackBar('Create New Task Page');
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Header(
                onPressed: () {
                  context.showSnackBar('Profile Page');
                },
                height: context.height > MinimumScreenSize.smallScreenHeight
                    ? context.height * 0.1
                    : context.height * 0.2,
                radius: 25,
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
