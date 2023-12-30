// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../utils/size_convertor.dart';

class PrimarySearchBar extends StatefulHookWidget {
  PrimarySearchBar({super.key, required this.hintText});

  String hintText;

  @override
  _PrimarySearchBarState createState() => _PrimarySearchBarState();
}

class _PrimarySearchBarState extends State<PrimarySearchBar> {
  @override
  Widget build(BuildContext context) {
    bool isShowDialog = useState(false).value;
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xFF219EBC),
          ),
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 8,
            offset: Offset(0, 6),
            spreadRadius: 0,
          )
        ],
      ),
      child: SizedBox(
        width: AppSizer.getWidth(context, 400),
        height: 50,
        child: SearchBar(
          trailing: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 20,
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return const MyDialog();
                        },
                      );
                    },
                    icon: Icon(
                      Icons.filter_list,
                      color: Theme.of(context).colorScheme.tertiary,
                      size: 20,
                    ))
              ],
            ),
          ],
          surfaceTintColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          backgroundColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          overlayColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.only(
              left: AppSizer.getWidth(context, 10),
              // top: 2,
              bottom: 3,
              right: AppSizer.getHeight(context, 20),
            ),
          ),
          elevation: const MaterialStatePropertyAll(1),
          side: MaterialStateProperty.all(
            BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          hintText: widget.hintText,
          hintStyle: MaterialStatePropertyAll(
            TextStyle(
              color: const Color(0xFF3F2E3E).withOpacity(0.5),
              fontSize: 12,
              fontFamily: 'InterRegular',
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}

class MyDialog extends StatefulWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  bool _setNameChecked = false;
  bool _cardNameChecked = false;
  String _searchText = '';

  void _clearFilters() {
    setState(() {
      _setNameChecked = false;
      _cardNameChecked = false;
    });
  }

  void _startSearching() {
    debugPrint('Searching....');
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.only(bottom: 450, left: 0, right: 70),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: AppSizer.getWidth(context, 400),
        // height: AppSizer.getHeight(context, 500),
        padding: const EdgeInsets.only(bottom: 10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 8,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 25,
                      color: Colors.black,
                    ))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                width: AppSizer.getWidth(context, 300),
                height: 45,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xFF219EBC),
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 8,
                      offset: Offset(0, 6),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: SearchBar(
                  trailing: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 5),
                      child: Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.tertiary,
                        size: 25,
                      ),
                    ),
                  ],
                  surfaceTintColor: const MaterialStatePropertyAll(
                    Colors.white,
                  ),
                  backgroundColor: const MaterialStatePropertyAll(
                    Colors.white,
                  ),
                  overlayColor: const MaterialStatePropertyAll(
                    Colors.white,
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.only(
                      left: AppSizer.getWidth(context, 10),
                      // top: 2,
                      bottom: 3,
                      right: AppSizer.getHeight(context, 20),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(1),
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  hintText: 'Search for cards',
                  hintStyle: MaterialStatePropertyAll(
                    TextStyle(
                      color: const Color(0xFF3F2E3E).withOpacity(0.5),
                      fontSize: 12,
                      fontFamily: 'InterRegular',
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Checkbox(
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        value: _setNameChecked,
                        onChanged: (value) =>
                            setState(() => _setNameChecked = value!),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Set name',
                          style: TextStyle(
                            color: Color(0xFF3F2E3E),
                            fontSize: 12,
                            fontFamily: 'InterRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Checkbox(
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        value: _cardNameChecked,
                        onChanged: (value) =>
                            setState(() => _cardNameChecked = value!),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Card name',
                        style: TextStyle(
                          color: Color(0xFF3F2E3E),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: _clearFilters,
                    child: Container(
                      width: 115,
                      height: 43,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF8ECAE6)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 8,
                            offset: Offset(0, 6),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Clear filters',
                            style: TextStyle(
                              color: Color(0xFF219EBC),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: _startSearching,
                    child: Container(
                      width: 83,
                      height: 43,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 8,
                            offset: Offset(0, 6),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: _startSearching,
                  //   style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.transparent,
                  //       shadowColor: Colors.transparent,

                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(40),
                  //       )),
                  //   child: const Text('Start Searching'),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
