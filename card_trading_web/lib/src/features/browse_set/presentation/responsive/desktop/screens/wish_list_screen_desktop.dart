import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/wish_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WishListScreenDesktop extends StatefulHookConsumerWidget {
  const WishListScreenDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeeCardDetailDesktopState();
}

class _SeeCardDetailDesktopState
    extends ConsumerState<WishListScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView2: const WishlistViewWidget(),
      isHome: false,
    );
  }
}
