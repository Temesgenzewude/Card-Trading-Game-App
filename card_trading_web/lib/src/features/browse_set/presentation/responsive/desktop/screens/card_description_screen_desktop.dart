import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/card_description_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CardDetailScreenDesktop extends StatefulHookConsumerWidget {
  const CardDetailScreenDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CardDetailScreenDesktopState();
}

class _CardDetailScreenDesktopState
    extends ConsumerState<CardDetailScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView2: const CardDescriptionViewWidget(),
    );
  }
}
