import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../common_widgets/custom_text_field.dart';
import '../../../../utils/size_convertor.dart';

class ContactUsTabDesktop extends StatefulHookConsumerWidget {
  const ContactUsTabDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ContactUsTabDesktopState();
}

class _ContactUsTabDesktopState extends ConsumerState<ContactUsTabDesktop> {
  var rememberMe = false;
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final nameController = useTextEditingController();
    final subjectController = useTextEditingController();
    final messageController = useTextEditingController();
    return SingleChildScrollView(
      child: Column(
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
                        height: 410,
                        width: AppSizer.getWidth(context, 895),
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
                            padding: EdgeInsets.symmetric(
                              horizontal: 48,
                              vertical: AppSizer.getHeight(context, 33),
                            ),
                            child: SizedBox(
                              width: AppSizer.getWidth(context, 800),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Name'),
                                          SizedBox(
                                            width:
                                                AppSizer.getWidth(context, 400),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0),
                                              child: CustomTextField(
                                                  textEditingController:
                                                      nameController),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Email'),
                                          SizedBox(
                                            width:
                                                AppSizer.getWidth(context, 400),
                                            child: CustomTextField(
                                                textEditingController:
                                                    emailController),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Subject'),
                                        SizedBox(
                                          width: double.infinity,
                                          child: CustomTextField(
                                            textEditingController:
                                                subjectController,
                                            isPhoneNumber: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Message'),
                                      SizedBox(
                                        width: double.infinity,
                                        child: CustomTextField(
                                          textEditingController:
                                              messageController,
                                          isMultiline: true,
                                          maxLines: 4,
                                          minLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 20,
                                    ),
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(64),
                                          gradient: AppColors.buttonGradient,
                                        ),
                                        height: 48,
                                        width: AppSizer.getWidth(context, 430),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              shadowColor: Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              )),
                                          onPressed: () {},
                                          child: Text(
                                            'Send',
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
                      ),
                    ],
                  ),
                  CardNameWidget(primaryTitile: 'Contact Us', width: 313),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 150.0),
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
