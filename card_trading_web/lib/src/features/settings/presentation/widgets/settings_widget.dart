import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsWidget extends StatefulHookConsumerWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends ConsumerState<SettingsWidget> {
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
              left: AppSizer.getWidth(context, 210),
              top: 20,
              bottom: 20,
            ),
            child: Center(
              child: Stack(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 67,
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
