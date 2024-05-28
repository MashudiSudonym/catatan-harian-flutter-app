import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/sign_in_page.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/sign_up_page.dart';
import 'package:catatan_harian/src/features/common/presentation/splash_page/splash_page.dart';
import 'package:catatan_harian/src/features/profile/presentation/profile_page/profile_page.dart';
import 'package:catatan_harian/src/features/profile/presentation/update_profile_page/update_profile_page.dart';
import 'package:catatan_harian/src/features/todo/presentation/create_todo_page/create_todo_page.dart';
import 'package:catatan_harian/src/features/todo/presentation/home_page/home_page.dart';
import 'package:catatan_harian/src/features/todo/presentation/update_todo_page/update_todo_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/splash',
          name: 'splash-page',
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: '/sign-in',
          name: 'sign-in-page',
          builder: (context, state) => const SignInPage(),
        ),
        GoRoute(
          path: '/sign-up',
          name: 'sign-up-page',
          builder: (context, state) => const SignUpPage(),
        ),
        GoRoute(
          path: '/home',
          name: 'home-page',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/create-todo',
          name: 'create-todo-page',
          builder: (context, state) => const CreateTodoPage(),
        ),
        GoRoute(
          path: '/update-todo',
          name: 'update-todo-page',
          builder: (context, state) => const UpdateTodoPage(),
        ),
        GoRoute(
          path: '/profile',
          name: 'profile-page',
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          path: '/update-profile',
          name: 'update-profile-page',
          builder: (context, state) => const UpdateProfilePage(),
        ),
      ],
      initialLocation: '/splash',
    );
