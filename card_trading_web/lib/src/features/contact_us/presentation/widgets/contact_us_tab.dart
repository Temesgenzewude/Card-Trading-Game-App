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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      child: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardNameWidget(primaryTitile: 'Contact Us', width: 315),
              Container(
                color: Theme.of(context).colorScheme.background,
                height: AppSizer.getHeight(context, 700),
                width: AppSizer.getWidth(context, 985),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizer.getWidth(context, 48),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Name'),
                                  SizedBox(
                                    width: AppSizer.getWidth(context, 400),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
                                      child: CustomTextField(
                                          textEditingController:
                                              nameController),
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
                                        textEditingController: emailController),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Subject'),
                                SizedBox(
                                  width: double.infinity,
                                  child: CustomTextField(
                                    textEditingController: subjectController,
                                    isPhoneNumber: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Message'),
                              SizedBox(
                                width: double.infinity,
                                child: CustomTextField(
                                  textEditingController: messageController,
                                  isMultiline: true,
                                  maxLines: 4,
                                  minLines: 2,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: AppSizer.getHeight(context, 80),
                              ),
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
                                    'Send',
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
            ],
          ),
        ),
      ),
    );
  }
}
