import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/corner_header_logo.dart';
import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/method/form_sign_in.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/method/horizontal_sign_in_form.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_in_page/method/vertical_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        key: const PageStorageKey('signInEventList'),
        child: Stack(
          children: [
            Assets.images.signInBg.image(
              fit: BoxFit.fill,
              width: context.width,
              height: context.height > MinimumScreenSize.smallScreenHeight
                  ? context.height
                  : context.height + (context.height * 0.2),
            ),
            const Positioned(
              top: 16,
              left: 0,
              child: CornerHeaderLogo(),
            ),
            Positioned(
              top: context.height * 0.3,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: context.height > MinimumScreenSize.smallScreenHeight
                    ? verticalSignInForm(
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
                      )
                    : horizontalSignInForm(
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
          ],
        ),
      ),
    );
  }
}
