import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../common_widgets/custom_text_field.dart';
import '../../../../utils/size_convertor.dart';

class ProfileTabDesktop extends StatefulHookConsumerWidget {
  const ProfileTabDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileTabDesktopState();
}

class _ProfileTabDesktopState extends ConsumerState<ProfileTabDesktop> {
  var rememberMe = false;
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final firstNController = useTextEditingController();
    final lastNController = useTextEditingController();
    final phoneController = useTextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 147),
              vertical: 20,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 67,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      boxShadow: [boxShadow()],
                    ),
                    height: 500,
                    width: AppSizer.getWidth(context, 885),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 155,
                                        width: 155,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/profile_images/profile_image.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: 50,
                                          width: AppSizer.getWidth(context, 30),
                                          padding: EdgeInsets.all(
                                              AppSizer.getWidth(context, 15)),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.25),
                                                offset: const Offset(0, 6),
                                                blurRadius: 8,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                'assets/images/icon_images/edit_icon.png',
                                              ),
                                              // fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'First name',
                                        style: TextStyle(
                                          fontFamily: 'InterRegular',
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: AppSizer.getWidth(context, 400),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 20.0),
                                          child: CustomTextField(
                                              textEditingController:
                                                  firstNController),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Last name',
                                        style: TextStyle(
                                          fontFamily: 'InterRegular',
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: AppSizer.getWidth(context, 400),
                                        child: CustomTextField(
                                            textEditingController:
                                                lastNController),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Phone number',
                                      style: TextStyle(
                                        fontFamily: 'InterRegular',
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AppSizer.getWidth(context, 400),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: CustomTextField(
                                          textEditingController:
                                              phoneController,
                                          isPhoneNumber: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Email',
                                      style: TextStyle(
                                        fontFamily: 'InterRegular',
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AppSizer.getWidth(context, 400),
                                      child: CustomTextField(
                                          textEditingController:
                                              emailController),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 60,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(64),
                                    gradient: AppColors.buttonGradient,
                                  ),
                                  height: 48,
                                  width: AppSizer.getWidth(context, 430),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        )),
                                    onPressed: () {},
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                          fontFamily: 'InterRegular',
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
