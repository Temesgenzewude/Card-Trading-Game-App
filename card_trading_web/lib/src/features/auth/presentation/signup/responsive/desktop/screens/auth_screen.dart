import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/auth/presentation/signup/responsive/desktop/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignupDesktop extends StatefulHookConsumerWidget {
  const SignupDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupDesktopState();
}

class _SignupDesktopState extends ConsumerState<SignupDesktop> {
  @override
  Widget build(BuildContext context) {
    return HomeAndBrowseTabs(
      tabBarView1: const Column(
        children: [
          Expanded(child: SignupScreen()),
          FooterWidget(),
        ],
      ),
    );
  }
}
