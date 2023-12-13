import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../utils/size_convertor.dart';
import 'paragraph_widget.dart';
import 'text_widget.dart';

class PrivacyTabDesktop extends StatefulHookConsumerWidget {
  const PrivacyTabDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PrivacyTabDesktopState();
}

class _PrivacyTabDesktopState extends ConsumerState<PrivacyTabDesktop> {
  var rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardNameWidget(primaryTitile: 'Privacy policy', width: 315),
            Container(
              color: Theme.of(context).colorScheme.background,
              height: AppSizer.getHeight(context, 600),
              width: AppSizer.getWidth(context, 1000),
              padding: const EdgeInsets.only(
                  left: 50, right: 40, top: 40, bottom: 60),
              child: const SingleChildScrollView(
                child: Column(
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
            ),
          ],
        ),
      ),
    );
  }
}
