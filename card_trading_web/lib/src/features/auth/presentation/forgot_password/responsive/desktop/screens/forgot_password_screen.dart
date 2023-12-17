// ignore_for_file: unused_import, unused_local_variable

import 'package:card_trading_web/dependency_injection/shared_pref_injection.dart';
import 'package:card_trading_web/src/common_widgets/auth_button.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/custom_text_field.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/constants/shared_pref_keys.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class ForgotPasswordScreen extends StatefulHookConsumerWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final prefManager = sl<SharedPrefManager>();
  var rememberMe = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = useTextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/bg_images/bg_image.png'),
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: SizedBox(
                height: 660,
                width: AppSizer.getWidth(context, 985),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 67,
                        ),
                        Center(
                          child: Container(
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
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: SizedBox(
                                  width: AppSizer.getWidth(context, 600),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 20.0,
                                              bottom: 20.0,
                                              right: AppSizer.getWidth(
                                                  context, 66)),
                                          child: SizedBox(
                                            height: AppSizer.getHeight(
                                                context, 281),
                                            width:
                                                AppSizer.getWidth(context, 356),
                                            child: Lottie.asset(
                                                'assets/lottie/forgot_password.json'),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20.0, bottom: 10),
                                        child: Center(
                                          child: SizedBox(
                                            width:
                                                AppSizer.getWidth(context, 410),
                                            child: const Text(
                                              "Enter the email address associated with your account and we'll send you a link to reset your password.",
                                              style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Center(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Email',
                                              style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14,
                                              ),
                                            ),
                                            SizedBox(
                                              width: AppSizer.getWidth(
                                                  context, 430),
                                              child: CustomTextField(
                                                  textEditingController:
                                                      emailController),
                                            ),
                                          ],
                                        )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 20,
                                          bottom:
                                              AppSizer.getHeight(context, 80),
                                        ),
                                        child: Center(
                                          child: SizedBox(
                                            height: 60,
                                            width:
                                                AppSizer.getWidth(context, 400),
                                            child: AuthButton(
                                              text: 'Continue',
                                            ),
                                          ),
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
                    SizedBox(
                      height: 67,
                      child: CardNameWidget(
                          primaryTitile: 'Password Recovery', width: 400),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
