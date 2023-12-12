import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/see_card_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SeeCardDetailScreen extends StatefulHookConsumerWidget {
  const SeeCardDetailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeeCardDetailPageState();
}

class _SeeCardDetailPageState extends ConsumerState<SeeCardDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView2: const SeeCardDetail(),
    );
  }
}
