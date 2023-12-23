import 'package:card_trading_web/src/common_widgets/auth_button.dart';
import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
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
      physics: const PageScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: AppSizer.getWidth(context, 210),
              top: 20,
              bottom: 20,
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
                        height: 410,
                        width: AppSizer.getWidth(context, 885),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: AppSizer.getWidth(context, 55),
                              right: AppSizer.getWidth(context, 48),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        textEditingController: emailController),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width:
                                                AppSizer.getWidth(context, 380),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Password',
                                                  style: TextStyle(
                                                    fontFamily: 'InterRegular',
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                CustomTextField(
                                                    textEditingController:
                                                        passwordController),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width:
                                                AppSizer.getWidth(context, 380),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Confirm Password',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'InterRegular',
                                                      fontSize: 14),
                                                ),
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
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
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: AppSizer.getHeight(
                                                    context, 10)),
                                            child: const Text(
                                              'Agree with Terms & Conditions',
                                              style: TextStyle(
                                                  fontFamily: 'InterRegular',
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                AuthButton(),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: AppSizer.getHeight(context, 5)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 10.0),
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
                                          top: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: InkWell(
                                                onTap: () {},
                                                child: SizedBox(
                                                  height: 30,
                                                  width: AppSizer.getWidth(
                                                      context, 31),
                                                  child: SvgPicture.asset(
                                                    'assets/svg_images/google.svg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0),
                                              child: InkWell(
                                                onTap: () {},
                                                child: SizedBox(
                                                  height: 30,
                                                  width: AppSizer.getWidth(
                                                      context, 31),
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
                                          top: 10,
                                        ),
                                        child: DontHaveAccount(
                                          message: 'Already have an account? ',
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
                    ],
                  ),
                  CardNameWidget(primaryTitile: 'Create Account', width: 313),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 160.0),
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
