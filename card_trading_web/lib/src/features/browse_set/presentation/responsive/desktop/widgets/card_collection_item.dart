// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/hover_content_widget.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardCollectionItem extends StatefulWidget {
  CardCollectionItem({super.key, required this.index});
  int index;

  @override
  _CardCollectionItemState createState() => _CardCollectionItemState();
}

class _CardCollectionItemState extends State<CardCollectionItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () {
          context.go('/${AppRoutes.DesktopCardDetailScreen.name}');
        },
        child: Container(
          width: AppSizer.getWidth(context, 160),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            // color: Theme.of(context).colorScheme.secondary,
          ),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/image3.png',
                fit: BoxFit.fill,
              ),
              if (isHovered)
                HoverContent(
                  index: widget.index,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
