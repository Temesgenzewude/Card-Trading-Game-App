import 'package:card_trading_web/src/common_widgets/auth_button.dart';
import 'package:card_trading_web/src/common_widgets/custom_text_field.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/auth/presentation/signup/responsive/desktop/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../common_widgets/card_name_widget.dart';
import '../../../../../../../constants/colors.dart';
import '../../../../../../../routing/routes.dart';
import '../../../../../../../utils/size_convertor.dart';
import '../../../../login/responsive/desktop/widgets/dont_have_account.dart';

class SignupScreen extends StatefulHookConsumerWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  var rememberMe = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = useTextEditingController();
    TextEditingController passwordController = useTextEditingController();
    TextEditingController confirmPasswordController =
        useTextEditingController();
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardNameWidget(primaryTitile: 'Signup', width: 313),
              Container(
                color: Theme.of(context).colorScheme.background,
                height: AppSizer.getHeight(context, 650),
                width: AppSizer.getWidth(context, 985),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10.0, left: 48, right: 55),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Email'),
                              CustomTextField(
                                  textEditingController: emailController),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: AppSizer.getWidth(context, 430),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Password'),
                                          CustomTextField(
                                              textEditingController:
                                                  passwordController),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: AppSizer.getWidth(context, 430),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Confirm Password'),
                                          CustomTextField(
                                              textEditingController:
                                                  confirmPasswordController),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                                      child: Flexible(
                                          child: Text(
                                              'Agree with Terms & Conditions')),
                                    ),
                                  ],
                                ),
                                const Flexible(child: Text('Forgot Password?'))
                              ],
                            ),
                          ),
                          AuthButton(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('or continue with'),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15.0),
                                        child: GestureDetector(
                                          child: SizedBox(
                                            height:
                                                AppSizer.getHeight(context, 60),
                                            width:
                                                AppSizer.getWidth(context, 60),
                                            child: SvgPicture.asset(
                                              'assets/svg_images/google.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: GestureDetector(
                                          child: SizedBox(
                                            height:
                                                AppSizer.getHeight(context, 60),
                                            width:
                                                AppSizer.getWidth(context, 60),
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
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: DontHaveAccount(
                                    message: 'Already have an account?',
                                  ),
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
        ),
      ),
    );
  }
}
