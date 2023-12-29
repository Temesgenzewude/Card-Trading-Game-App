import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/see_card_detail_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SeeCardDetailListScreenDesktop extends StatefulHookConsumerWidget {
  const SeeCardDetailListScreenDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeeCardDetailDesktopState();
}

class _SeeCardDetailDesktopState
    extends ConsumerState<SeeCardDetailListScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView2: const SeeCardDetailListView(),
      isHome: false,
    );
  }
}
