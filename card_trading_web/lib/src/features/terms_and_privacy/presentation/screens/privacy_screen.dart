import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/terms_and_privacy/presentation/widgets/privacy_tab.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PrivacyScreen extends ConsumerStatefulWidget {
  const PrivacyScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PrivacyTabState();
}

class _PrivacyTabState extends ConsumerState<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      isScroll: false,
      tabBarView1: Column(mainAxisSize: MainAxisSize.min, children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(bottom: AppSizer.getHeight(context, 50)),
          child: const PrivacyTabDesktop(),
        )),
        const FooterWidget(),
      ]),
    );
  }
}
