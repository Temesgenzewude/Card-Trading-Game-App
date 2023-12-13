import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../utils/size_convertor.dart';
import 'paragraph_widget.dart';
import 'text_widget.dart';

class TermsOfUseTabDesktop extends StatefulHookConsumerWidget {
  const TermsOfUseTabDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TermsOfUseTabDesktopState();
}

class _TermsOfUseTabDesktopState extends ConsumerState<TermsOfUseTabDesktop> {
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
            CardNameWidget(primaryTitile: 'Terms of use', width: 315),
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
                      'Pokellector is maintained as a free service to its users. By using the Pokellector website or any of the related mobile applications (the "Site"), you agree to be bound by the following terms of use. If you do not agree, you should not use the Pokellector website or mobile applications.',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    TextWidget(text: 'COPYRIGHT'),
                    ParagraphWidget(
                        text:
                            'The organization, gaphics, compilation and other matters related to the Site are protected under applicable copyrights, trademarks and other proprietary rights both at common law and through registration. Pokellector maintains a list of Pokemon cards as released by Pokemon and The Pokemon Company International. The text, images and contents of those cards are the property of their respective owners. Your use of the Site does not grant you ownership rights to any content, document or other materials found there in.'),
                    TextWidget(text: 'RIGHT TO USE'),
                    ParagraphWidget(
                        text:
                            "Pokellector does not offer an API to interact with the data we store. You agree not to use automated means to interact with the data we store without written permission. This includes, but isn't limited to, retrieving prices, images and managing collections. Pokellector may at any time revoke your right to use and prohibit access to the Site. Pokellector reserves the right to modify or remove any documents, information or other content appearing on the Site. This includes avatars or comments added by users of the Site."),
                    ParagraphWidget(
                        text:
                            '''Your rights under this agreeement is not transferable. Any password or right given to you to obtain information or documents is not transferable.'''),
                    TextWidget(text: 'INDEMNITY'),
                    ParagraphWidget(
                        text:
                            '''You agree to indemnify, defend and hold us and our partners, attorneys, staff and affiliates (collectively, "Affiliated Parties") harmless from any liability, loss, claim and expense, including reasonable attorneys' fees, related to your violation of this Agreement or use of the Site.'''),
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
