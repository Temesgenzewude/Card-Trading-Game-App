import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/terms_and_privacy/presentation/widgets/terms_tab.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TermsOfUseScreen extends ConsumerWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HomeAndBrowseTabs(
      isScroll: false,
      tabBarView1: Column(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: AppSizer.getHeight(context, 50)),
            child: const TermsOfUseTabDesktop(),
          ),
        ),
        const FooterWidget(),
      ]),
    );
  }
}
