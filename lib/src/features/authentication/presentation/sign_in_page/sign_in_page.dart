import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/full_screen_background.dart';
import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/method/form_sign_in.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/widget/horizontal_sign_in_form.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/widget/parent_layout_sign_in.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/widget/vertical_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
                key: const Key('Body Sign In Small'),
                builder: (_) => ParentLayoutSignIn(
                  child: VerticalSignInForm(
                    form: formSignIn(
                      ref: ref,
                      emailController: emailController,
                      passwordController: passwordController,
                      signInButton: () {
                        ref.read(routerProvider).pushNamed('home-page');
                      },
                      signUpButton: () {
                        ref.read(routerProvider).pushNamed('sign-up-page');
                      },
                    ),
                  ),
                ),
              ),
              Breakpoints.mediumAndUp: SlotLayout.from(
                key: const Key('Body Sign In Medium and Up'),
                builder: (_) => ParentLayoutSignIn(
                  topContentPadding: 16,
                  child: HorizontalSignInForm(
                    form: formSignIn(
                      ref: ref,
                      emailController: emailController,
                      passwordController: passwordController,
                      signInButton: () {
                        ref.read(routerProvider).pushNamed('home-page');
                      },
                      signUpButton: () {
                        ref.read(routerProvider).pushNamed('sign-up-page');
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
