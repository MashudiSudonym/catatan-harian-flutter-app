import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upgrader/upgrader.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.amber[900],
        ),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.amberAccent,
        ),
        useMaterial3: false,
      ),
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routeInformationProvider:
          ref.watch(routerProvider).routeInformationProvider,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
      builder: (context, child) {
        return UpgradeAlert(
          navigatorKey: ref.watch(routerProvider).routerDelegate.navigatorKey,
          child: child,
        );
      },
    );
  }
}
