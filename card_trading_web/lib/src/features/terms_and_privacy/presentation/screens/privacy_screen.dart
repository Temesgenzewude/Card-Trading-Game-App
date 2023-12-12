import 'package:card_trading_web/src/common_widgets/button_widget.dart';
import 'package:card_trading_web/src/features/terms_and_privacy/presentation/widgets/paragraph_widget.dart';
import 'package:card_trading_web/src/features/terms_and_privacy/presentation/widgets/text_widget.dart';
import 'package:card_trading_web/src/theme/theme.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 150),
              vertical: AppSizer.getHeight(context, 60)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryButton(buttonName: 'Privacy policy', buttonRadius: 6),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: lightTheme.colorScheme.primary)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizer.getHeight(context, 60),
                      vertical: AppSizer.getWidth(context, 20)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The following outlines the data Pokellector collects and how it is used.',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      TextWidget(text: 'WHAT WE COLLECT'),
                      ParagraphWidget(
                          text:
                              'When registering for Pokellector, we collect information such as your email address, IP address and Facebook ID. While using the site, we may collect your IP address.'),
                      TextWidget(text: 'HOW WE HANDLE YOUR DATA'),
                      ParagraphWidget(
                          text:
                              "Pokellector does not share identifiable user information with third parties. The data is used in the administration of the site and management of your account."),
                      TextWidget(text: 'HOW TO REMOVE YOUR DATA'),
                      ParagraphWidget(
                          text:
                              '''To request deletion of your pokellector account, please send a request via our contact page. Please use the email address on your account as we will need to verify before deletion
Please note that even if your account is deleted, we may retain anonymized transaction data for business purposes'''),
                      TextWidget(text: 'ADVERTISING'),
                      ParagraphWidget(
                          text:
                              '''The Pokellector website and/or application may contain advertising. Advertisers may collect your IP address and read your cookies to determine what ads you have seen in the past and what websites you may have visited.'''),
                      ParagraphWidget(
                          text:
                              "We use third party advertisements to support our site. Some of these advertisers may be served from our third party advertiser. You can view their privacy policy and cookie policy for more information. You can manage your cookies here.")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
