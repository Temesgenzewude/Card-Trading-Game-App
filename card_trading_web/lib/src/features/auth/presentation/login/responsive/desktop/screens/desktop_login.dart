import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/auth/presentation/login/responsive/desktop/screens/login_screen.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DesktopLogin extends StatefulHookConsumerWidget {
  const DesktopLogin({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => DesktopLoginState();
}

class DesktopLoginState extends ConsumerState<DesktopLogin> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView1: const LoginScreen(),
    );
  }
}
