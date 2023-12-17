import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../common_widgets/app_bar_widget.dart';
import '../../../../common_widgets/card_name_widget.dart';
import '../../../../common_widgets/footer_widget.dart';
import '../../../../utils/size_convertor.dart';
import '../../../home/presentation/widgets/build_tab_bar_container.dart';
import '../widgets/card_description_widget.dart';
import '../widgets/collection_status_card_widget.dart';

class SeeCardDetailScreen extends StatefulHookWidget {
  const SeeCardDetailScreen({Key? key}) : super(key: key);

  @override
  _NewSeeCardDetailScreenState createState() => _NewSeeCardDetailScreenState();
}

class _NewSeeCardDetailScreenState extends State<SeeCardDetailScreen> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 173),
              vertical: AppSizer.getHeight(context, 95),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CardDescriptionWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppSizer.getHeight(context, 67),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 67,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 36,
                              vertical: 34,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                              ],
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            child: Column(
                              children: [
                                const CollectionStatusCardWidget(),
                                Wrap(
                                  spacing: AppSizer.getWidth(context, 20),
                                  runSpacing: AppSizer.getWidth(context, 40),
                                  children: List.generate(
                                    10,
                                    (index) => Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.25),
                                            offset: const Offset(0, 4),
                                            blurRadius: 4,
                                            spreadRadius: 1,
                                          ),
                                        ],
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                      child: Image.asset(
                                        'assets/images/image3.png',
                                        width: AppSizer.getWidth(
                                          context,
                                          140,
                                        ),
                                        height:
                                            AppSizer.getHeight(context, 222),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      CardNameWidget(
                        primaryTitile: 'Card List',
                        width: 563,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const FooterWidget()
        ],
      ),
    );
  }
}
