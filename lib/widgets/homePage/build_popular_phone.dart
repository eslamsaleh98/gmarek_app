import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohamed_ibrahim/data/phones_data.dart';
import 'package:mohamed_ibrahim/screens/details_page.dart';
import 'package:universal_html/html.dart';

import 'build_category.dart';
import 'build_phone.dart';

@override
Set<PointerDeviceKind> get dragDevices => {
      PointerDeviceKind.touch,
      PointerDeviceKind.mouse,
      //  PointerDeviceKind.unknown
      // etc.
    };

final ScrollController controller = ScrollController();
Column buildPopularPhone(Size size, bool isDarkMode) {
  return Column(
    children: [
      buildCategory('Popular Phones', size, isDarkMode),
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.03,
          left: size.width * 0.03,
          right: size.width * 0.03,
        ),
        child: SizedBox(
            width: size.width, height: size.height * 0.45, child: ScrollPage()),
      ),
    ],
  );
}

class ScrollPage extends StatefulWidget {
  @override
  State<ScrollPage> createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  final ScrollController _scrollController1 = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
      //
      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 25,
          _scrollController1);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: const Duration(seconds: 50), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return ListView.builder(
        controller: _scrollController1,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: phones.length,
        itemBuilder: (context, i) {
          return buildPhone(
            i,
            size,
            isDarkMode,
          );
        });
  }
}
