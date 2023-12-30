import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/settings/presentation/widgets/settings_container.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsWidget extends StatefulHookConsumerWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends ConsumerState<SettingsWidget> {
  var languageValue = true;
  bool switchMode = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const PageScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: AppSizer.getWidth(context, 0),
              top: 20,
              bottom: 20,
            ),
            child: Center(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 67,
                      ),
                      Container(
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
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: AppSizer.getWidth(context, 55),
                              right: AppSizer.getWidth(context, 48),
                              top: 10),
                          child: Column(
                            children: [
                              SettingsContainer(
                                onPressed: () {},
                                title: 'Language',
                                rightColumnWidget: Row(children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'English',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      Checkbox(
                                          activeColor: Colors.green,
                                          checkColor: Colors.white,
                                          value: languageValue,
                                          onChanged: (value) {
                                            setState(() {
                                              languageValue = !languageValue;
                                              value = languageValue;
                                            });
                                          }),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40.0, right: 20.0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'German',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        Checkbox(
                                            activeColor: Colors.green,
                                            checkColor: Colors.white,
                                            value: !languageValue,
                                            onChanged: (value) {
                                              setState(() {
                                                languageValue = !languageValue;
                                                value = languageValue;
                                              });
                                            }),
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                              SettingsContainer(
                                onPressed: () {},
                                title: 'Night mode',
                                rightColumnWidget: Padding(
                                  padding: const EdgeInsets.only(right: 40.0),
                                  child: Switch(
                                      activeColor: Colors.white,
                                      value: switchMode,
                                      onChanged: (value) {
                                        setState(() {
                                          switchMode = !switchMode;
                                          value = switchMode;
                                        });
                                      }),
                                ),
                              ),
                              SettingsContainer(
                                  onPressed: () => context.go(
                                      '/${AppRoutes.DesktopChangeEmailScreen.name}'),
                                  title: 'Change Email'),
                              SettingsContainer(
                                  onPressed: () => context.go(
                                      '/${AppRoutes.DesktopChangePasswordScreen.name}'),
                                  title: 'Change Password'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  CardNameWidget(primaryTitile: 'Settings', width: 313),
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
