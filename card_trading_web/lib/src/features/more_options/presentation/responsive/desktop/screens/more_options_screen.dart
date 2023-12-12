import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/more_options/presentation/responsive/desktop/widgets/more_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MoreOptionsScreen extends StatefulHookConsumerWidget {
  const MoreOptionsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MoreOptionsScreenState();
}

class _MoreOptionsScreenState extends ConsumerState<MoreOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView1: const MoreOptionsWidget(),
    );
  }
}
