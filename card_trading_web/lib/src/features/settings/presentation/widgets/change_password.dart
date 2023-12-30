import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/custom_text_field.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/settings/presentation/widgets/change_button.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangePassword extends StatefulHookConsumerWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends ConsumerState<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController oldPasswordController = useTextEditingController();
    TextEditingController newPasswordController = useTextEditingController();
    TextEditingController confirmNewPasswordController =
        useTextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
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
                                left: AppSizer.getWidth(context, 20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0, left: 48, right: 55),
                                child: SizedBox(
                                  width: AppSizer.getWidth(context, 430),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              'Old Password',
                                              style: TextStyle(
                                                  fontFamily: 'InterRegular',
                                                  fontSize: 14),
                                            ),
                                          ),
                                          CustomTextField(
                                              textEditingController:
                                                  oldPasswordController),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 4.0),
                                            child: Text(
                                              'New Password',
                                              style: TextStyle(
                                                  fontFamily: 'InterRegular',
                                                  fontSize: 14),
                                            ),
                                          ),
                                          CustomTextField(
                                            textEditingController:
                                                newPasswordController,
                                            isPassword: true,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 4.0),
                                            child: Text(
                                              'Confirm New Password',
                                              style: TextStyle(
                                                  fontFamily: 'InterRegular',
                                                  fontSize: 14),
                                            ),
                                          ),
                                          CustomTextField(
                                            textEditingController:
                                                confirmNewPasswordController,
                                            isPassword: true,
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: ChangeButton(isChangeEmail: false),
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
                    CardNameWidget(
                        primaryTitile: 'Change Password', width: 313),
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
      ),
    );
  }
}
