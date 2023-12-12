// ignore_for_file: unused_import

import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/collections.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/home_screen_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DesktopCollectionsLayout extends StatefulHookConsumerWidget {
  const DesktopCollectionsLayout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      DesktopCollectionsLayoutState();
}

class DesktopCollectionsLayoutState
    extends ConsumerState<DesktopCollectionsLayout> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView1: const Collections(),
    );
  }
}
