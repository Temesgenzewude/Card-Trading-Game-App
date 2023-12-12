import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/features/auth/presentation/login/responsive/desktop/widgets/dont_have_account.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginDesktop extends StatefulHookConsumerWidget {
  const LoginDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginDesktop> {
  var rememberMe = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = useTextEditingController();
    TextEditingController passwordController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardNameWidget(primaryTitile: 'SignIn', width: 400),
          Container(
            color: Theme.of(context).colorScheme.background,
            height: AppSizer.getHeight(context, 600),
            width: AppSizer.getWidth(context, 1000),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  width: AppSizer.getWidth(context, 600),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text('Email'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: AppColors.borderColor, width: 1.0),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      const Text('Password'),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.greenAccent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: AppColors.borderColor, width: 1.0),
                          ),
                        ),
                        controller: passwordController,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: Colors.green,
                                    checkColor: Colors.white,
                                    value: rememberMe,
                                    onChanged: (val) {
                                      setState(() {
                                        rememberMe = !rememberMe;
                                      });
                                    }),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text('Remember Me'),
                                ),
                              ],
                            ),
                            const Text('Forgot Password?')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                          height: AppSizer.getHeight(context, 60),
                          width: AppSizer.getWidth(context, 600),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.tertiary)),
                            onPressed: () {
                              Future.delayed(const Duration(seconds: 0), () {
                                context.go('/${AppRoutes.DesktopHome.name}');
                              });
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('or continue with'),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: GestureDetector(
                                      child: SvgPicture.asset(
                                        'assets/svg_images/google.svg',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: GestureDetector(
                                      child: SvgPicture.asset(
                                        'assets/svg_images/facebook.svg',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: DontHaveAccount(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
