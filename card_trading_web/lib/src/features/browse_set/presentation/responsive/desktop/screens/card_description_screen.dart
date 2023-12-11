import 'package:card_trading_web/src/common_widgets/app_bar_widget.dart';
import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/build_tab_bar_container.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/product_card_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardDescriptionScreen extends StatefulHookWidget {
  const CardDescriptionScreen({super.key});

  @override
  State<CardDescriptionScreen> createState() => _CardDescriptionScreenState();
}

class _CardDescriptionScreenState extends State<CardDescriptionScreen> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    var selectedCard = useState("Pokellector");

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
           SliverAppBar(
              title: AppBarWidget(),
            ),
            SliverAppBar(
              pinned: true,
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              title: TabBarContainer(
                selectedCard: selectedCard,
                cardGames: cardGames,
                tabController: tabController,
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: AppSizer.getHeight(context, 55),
              left: AppSizer.getWidth(context, 149),
              right: AppSizer.getWidth(context, 149),
            ),
            child: Wrap(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: AppSizer.getWidth(context, 29),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CardNameWidget(
                                primaryTitile: 'Card name',
                                width: 313,
                                secondaryTitle: '#2',
                              ),
                              Container(
                                width: AppSizer.getWidth(context, 620),
                                padding: EdgeInsets.only(
                                  top: AppSizer.getHeight(context, 18),
                                  bottom: AppSizer.getHeight(context, 54),
                                  left: AppSizer.getWidth(context, 31),
                                  right: AppSizer.getWidth(context, 31),
                                  // vertical: AppSizer.getHeight(context, 18),
                                ),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    boxShadow(),
                                  ],
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                AppSizer.getWidth(context, 15),
                                            vertical:
                                                AppSizer.getHeight(context, 15),
                                          ),
                                          child: Image.asset(
                                            'assets/images/image17.png',
                                            width:
                                                AppSizer.getWidth(context, 280),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Flexible(
                                          fit: FlexFit.loose,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextButtonWidget(
                                                  buttonText:
                                                      '<< Previous card'),
                                              TextButtonWidget(
                                                  buttonText: 'Next card >>'),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichTextWidget(
                                            boldText: 'Rarity',
                                            regularText: 'Uncommon',
                                          ),
                                          RichTextWidget(
                                            boldText: 'Set',
                                            regularText: 'Set name',
                                          ),
                                          RichTextWidget(
                                            boldText: 'Card',
                                            regularText: '2/182',
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: AppSizer.getHeight(
                                                  context, 31),
                                              bottom: AppSizer.getHeight(
                                                  context, 100),
                                            ),
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.check_circle,
                                                  color:
                                                      AppColors.disabledColor,
                                                  size: 18,
                                                ),
                                                Text(
                                                  'You already have this card',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.disabledColor,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                            fit: FlexFit.loose,
                                            child: Wrap(
                                              spacing: 4,
                                              runSpacing: 2,
                                              children: List.generate(
                                                4,
                                                (index) => BuyThisCardWidget(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Column(
                              children: [
                                CardNameWidget(
                                  primaryTitile:
                                      'Alternate version of this card',
                                  width: AppSizer.getWidth(context, 302),
                                ),
                                Container(
                                  width: AppSizer.getWidth(context, 302),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: AppSizer.getWidth(context, 101),
                                    vertical: AppSizer.getHeight(context, 21),
                                  ),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        boxShadow(),
                                      ],
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/image17.png',
                                      ),
                                      Text(
                                        'Holo card game',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiary,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SliderIndicatorWidget(
                                              isSelected: true),
                                          SliderIndicatorWidget(
                                              isSelected: false),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: AppSizer.getHeight(context, 32),
                              ),
                              child: Column(
                                children: [
                                  CardNameWidget(
                                    primaryTitile: 'Cards owned from set',
                                    width: AppSizer.getWidth(context, 302),
                                  ),
                                  Container(
                                    width: AppSizer.getWidth(context, 302),
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          AppSizer.getWidth(context, 26),
                                    ),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        boxShadow(),
                                      ],
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical:
                                                AppSizer.getHeight(context, 29),
                                          ),
                                          child: RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '00',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 64.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '/182',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 32.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Buy remaining cards and complete your collection',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiary,
                                            fontSize: 11,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 13.0,
                                            bottom: 21,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: AppSizer.getWidth(
                                                  context, 34),
                                              vertical: AppSizer.getHeight(
                                                  context, 14),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                              color: Color.fromARGB(
                                                  255, 142, 202, 230),
                                            ),
                                            child: Text(
                                              'Complete your collection',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: AppSizer.getHeight(context, 32)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CardNameWidget(
                            primaryTitile: 'Series name',
                            width: 313,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizer.getWidth(context, 27),
                              vertical: AppSizer.getHeight(context, 35),
                            ),
                            // width: AppSizer.getWidth(context, 917),
                            // height: AppSizer.getHeight(context, 350),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              color: Theme.of(context).colorScheme.secondary,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Wrap(
                              spacing: AppSizer.getWidth(context, 8),
                              runSpacing: AppSizer.getWidth(context, 13),
                              children: List.generate(
                                10,
                                (index) => ProductCardWidget(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliderIndicatorWidget extends StatelessWidget {
  SliderIndicatorWidget({super.key, required this.isSelected});

  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black, // Tiny border color
          width: 1.0, // Tiny border width
        ),
        color: isSelected
            ? Colors.black
            : Colors.white, // Different color based on selected state
      ),
    );
  }
}

class BuyThisCardWidget extends StatelessWidget {
  const BuyThisCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color
          width: 1.0, // Border width
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Text(
            '\$ 0.32',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'By this card from seller name',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          )
        ],
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  RichTextWidget({
    super.key,
    required this.boldText,
    required this.regularText,
  });
  String boldText;
  String regularText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppSizer.getHeight(context, 15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$boldText:  ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            TextSpan(
              text: regularText,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({
    super.key,
    required this.buttonText,
  });

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color
          width: 2.0, // Border width
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextButton(
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
