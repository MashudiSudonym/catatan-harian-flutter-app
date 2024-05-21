import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:catatan_harian/gen/assets.gen.dart';
import 'package:catatan_harian/src/core/common/widget/corner_header_logo.dart';
import 'package:catatan_harian/src/core/routing/router_provider.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/form_sign_up.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/header_sign_up.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/horizontal_sign_up_form.dart';
import 'package:catatan_harian/src/features/authentication/presentation/sign_up_page/method/vertical_sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  SignUpPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        key: const PageStorageKey('signEventList'),
        child: Stack(
          children: [
            Assets.images.signUpBg.image(
              fit: BoxFit.fill,
              width: context.width,
              height: context.height > MinimumScreenSize.smallScreenHeight
                  ? context.height
                  : context.height * 2,
            ),
            const Positioned(
              top: 16,
              left: 0,
              child: CornerHeaderLogo(),
            ),
            Positioned(
              top: context.height > MinimumScreenSize.smallScreenHeight
                  ? context.height * 0.1
                  : context.height * 0.2,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: context.height > MinimumScreenSize.smallScreenHeight
                    ? verticalForm(
                        header: headerSignUp(context: context),
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
                      )
                    : horizontalSignUpForm(
                        header: headerSignUp(context: context),
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
          ],
        ),
      ),
    );
  }
}
