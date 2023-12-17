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
      tabBarView1: const TermsOfUseTabDesktop(),
    );
  }
}
