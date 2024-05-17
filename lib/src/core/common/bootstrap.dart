import 'dart:async';

import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/src/core/common/my_observer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jiffy/jiffy.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

enum Flavors { development, staging, production }

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // initialize widget binding
  WidgetsFlutterBinding.ensureInitialized();

  // init basic configuration
  switch (Constants.appFlavor) {
    case Constants.DEVELOPMENT:
      await dotenv.load(fileName: "assets/${Constants.DEVELOPMENT}/.env");
    case Constants.STAGING:
      await dotenv.load(fileName: "assets/${Constants.STAGING}/.env");
    case Constants.PRODUCTION:
      await dotenv.load(fileName: "assets/${Constants.PRODUCTION}/.env");
    default:
      await dotenv.load(fileName: "assets/${Constants.DEVELOPMENT}/.env");
  }
  await Hive.initFlutter();
  await Jiffy.setLocale('id');
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'].toString(),
    anonKey: dotenv.env['SUPABASE_ANON_KEY'].toString(),
  );

  runApp(
    ProviderScope(
      observers: [
        MyObserver(),
      ],
      child: await builder(),
    ),
  );
}
