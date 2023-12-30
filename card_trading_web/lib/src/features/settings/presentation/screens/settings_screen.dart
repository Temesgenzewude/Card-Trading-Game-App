import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/settings/presentation/widgets/settings_widget.dart';
import 'package:flutter/material.dart';

class DesktopSettingScreen extends StatelessWidget {
  const DesktopSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView1: const SettingsWidget(),
    );
  }
}