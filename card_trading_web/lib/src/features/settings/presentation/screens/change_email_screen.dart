import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/settings/presentation/widgets/change_email.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView1: const ChangeEmail(),
    );
  }
}