import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateTodoPage extends ConsumerWidget {
  const UpdateTodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: AutoSizeText('Update Todo Page'),
      ),
    );
  }
}
