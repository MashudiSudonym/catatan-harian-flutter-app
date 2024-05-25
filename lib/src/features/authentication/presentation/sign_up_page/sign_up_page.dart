import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/full_screen_background.dart';
import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/form_sign_up.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/header_sign_up.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/horizontal_sign_up_form.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/parent_layout_sign_up.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/vertical_sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FullScreenBackground(
        image: Assets.images.signInBg.image().image,
        child: AdaptiveLayout(
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.small: SlotLayout.from(
                key: const Key(
                  'Body Sign Up Small',
                ),
                builder: (_) => parentLayoutSignUp(
                  context: context,
                  child: verticalSignUpForm(
                    header: headerSignUp(
                      context: context,
                      radius: 100,
                    ),
                    form: formSignUp(
                      ref: ref,
                      usernameController: usernameController,
                      emailController: emailController,
                      passwordController: passwordController,
                      confirmPasswordController: confirmPasswordController,
                      signUpButton: () {
                        ref.read(routerProvider).pushNamed('home-page');
                      },
                      signInButton: () {
                        ref.read(routerProvider).pop();
                      },
                    ),
                  ),
                ),
              ),
              Breakpoints.mediumAndUp: SlotLayout.from(
                key: const Key(
                  'Body Sign Up Medium and Up',
                ),
                builder: (_) => parentLayoutSignUp(
                  context: context,
                  child: horizontalSignUpForm(
                    header: headerSignUp(
                      context: context,
                      radius: 100,
                    ),
                    form: formSignUp(
                      ref: ref,
                      usernameController: usernameController,
                      emailController: emailController,
                      passwordController: passwordController,
                      confirmPasswordController: confirmPasswordController,
                      signUpButton: () {
                        ref.read(routerProvider).pushNamed('home-page');
                      },
                      signInButton: () {
                        ref.read(routerProvider).pop();
                      },
                    ),
                  ),
                ),
              ),
            },
          ),
        ),
      ),
    );
  }
}
