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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardNameWidget(primaryTitile: 'Profile', width: 315),
              Container(
                color: Theme.of(context).colorScheme.background,
                height: AppSizer.getHeight(context, 627),
                width: AppSizer.getWidth(context, 1000),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizedBox(
                      width: AppSizer.getWidth(context, 800),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: AppSizer.getHeight(context, 40),
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
                                        height:
                                            AppSizer.getHeight(context, 155),
                                        width: AppSizer.getHeight(context, 155),
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
                                        bottom: 10,
                                        right: 5,
                                        child: Container(
                                          height:
                                              AppSizer.getHeight(context, 30),
                                          width:
                                              AppSizer.getHeight(context, 30),
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
                                      const Text('First name'),
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
                                      const Text('Last name'),
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
                                    const Text('Phone number'),
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
                                    const Text('Email'),
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
                              padding: EdgeInsets.only(
                                top: AppSizer.getHeight(context, 40),
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: AppSizer.getHeight(context, 55),
                                  width: AppSizer.getWidth(context, 430),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .colorScheme
                                                    .tertiary)),
                                    onPressed: () {},
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
