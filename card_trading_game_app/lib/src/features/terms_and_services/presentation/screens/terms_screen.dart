import 'package:card_trading_game_app/src/common_widgets/button_widget.dart';
import 'package:card_trading_game_app/src/features/terms_and_services/presentation/widgets/paragraph_widget.dart';
import 'package:card_trading_game_app/src/features/terms_and_services/presentation/widgets/text_widget.dart';
import 'package:card_trading_game_app/src/theme/theme.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();

}

class _TermsScreenState extends State<TermsScreen> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 150),
          vertical: AppSizer.getHeight(context, 60)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryButton(buttonName: 'Terms of use', buttonRadius: 6),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: lightTheme.colorScheme.primary
                )),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizer.getHeight(context, 60),
                  vertical: AppSizer.getWidth(context, 20)
              ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(
                      'Pokellector is maintained as a free service to its users. By using the Pokellector website or any of the related mobile applications (the "Site"), you agree to be bound by the following terms of use. If you do not agree, you should not use the Pokellector website or mobile applications.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                      ),
                    ),
                    TextWidget(text: 'COPYRIGHT'),
                    ParagraphWidget(text: 'The organization, gaphics, compilation and other matters related to the Site are protected under applicable copyrights, trademarks and other proprietary rights both at common law and through registration. Pokellector maintains a list of Pokemon cards as released by Pokemon and The Pokemon Company International. The text, images and contents of those cards are the property of their respective owners. Your use of the Site does not grant you ownership rights to any content, document or other materials found there in.'),
                    TextWidget(text: 'RIGHT TO USE'),
                    ParagraphWidget(text: "Pokellector does not offer an API to interact with the data we store. You agree not to use automated means to interact with the data we store without written permission. This includes, but isn't limited to, retrieving prices, images and managing collections. Pokellector may at any time revoke your right to use and prohibit access to the Site. Pokellector reserves the right to modify or remove any documents, information or other content appearing on the Site. This includes avatars or comments added by users of the Site."),
                    ParagraphWidget(text: '''Your rights under this agreeement is not transferable. Any password or right given to you to obtain information or documents is not transferable.'''),
                    TextWidget(text: 'INDEMNITY'),
                    ParagraphWidget(text: '''You agree to indemnify, defend and hold us and our partners, attorneys, staff and affiliates (collectively, "Affiliated Parties") harmless from any liability, loss, claim and expense, including reasonable attorneys' fees, related to your violation of this Agreement or use of the Site.'''),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}