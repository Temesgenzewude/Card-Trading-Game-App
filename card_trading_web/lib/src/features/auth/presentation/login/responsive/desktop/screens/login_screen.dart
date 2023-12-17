import 'package:card_trading_web/src/common_widgets/auth_button.dart';
import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/custom_text_field.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/features/auth/presentation/login/responsive/desktop/widgets/dont_have_account.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../dependency_injection/shared_pref_injection.dart';
import '../../../../../../../constants/shared_pref_keys.dart';

class LoginScreen extends StatefulHookConsumerWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final prefManager = sl<SharedPrefManager>();
  var rememberMe = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = useTextEditingController();
    TextEditingController passwordController = useTextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 200),
              vertical: 20,
            ),
            child: Center(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 67,
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   color: Theme.of(context).colorScheme.background,
                        //   borderRadius: const BorderRadius.only(
                        //     topRight: Radius.circular(8),
                        //     bottomLeft: Radius.circular(8),
                        //     bottomRight: Radius.circular(8),
                        //   ),
                        // ),
                        decoration: ShapeDecoration(
                          // color: Colors.white,
                          color: Theme.of(context).colorScheme.background,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        height: 500,
                        width: AppSizer.getWidth(context, 885),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: AppSizer.getWidth(context, 20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10.0, left: 48, right: 55),
                              child: SizedBox(
                                width: AppSizer.getWidth(context, 430),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 20.0),
                                          child: Text(
                                            'Email',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14),
                                          ),
                                        ),
                                        CustomTextField(
                                            textEditingController:
                                                emailController),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Password',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14),
                                          ),
                                        ),
                                        CustomTextField(
                                          textEditingController:
                                              passwordController,
                                          isPassword: true,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                padding:
                                                    EdgeInsets.only(left: 10.0),
                                                child: Text(
                                                  'Remember Me',
                                                  style: TextStyle(
                                                    fontFamily: 'InterRegular',
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: AppSizer.getWidth(
                                                  context, 20),
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                context.go(
                                                    '/${AppRoutes.ForgotPasswordScreen.name}');
                                              },
                                              child: const Text(
                                                'Forgot Password?',
                                                style: TextStyle(
                                                  fontFamily: 'InterRegular',
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    AuthButton(isSignIn: true),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: AppSizer.getHeight(context, 10)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'or continue with',
                                              style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: GestureDetector(
                                                    child: SizedBox(
                                                      height: 40,
                                                      width: AppSizer.getWidth(
                                                          context, 41),
                                                      child: SvgPicture.asset(
                                                        'assets/svg_images/google.svg',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0),
                                                  child: GestureDetector(
                                                    child: SizedBox(
                                                      height: 40,
                                                      width: AppSizer.getWidth(
                                                          context, 41),
                                                      child: SvgPicture.asset(
                                                        'assets/svg_images/facebook.svg',
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                              top: 20,
                                            ),
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
                      ),
                    ],
                  ),
                  CardNameWidget(primaryTitile: 'SignIn', width: 313),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80.0),
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
