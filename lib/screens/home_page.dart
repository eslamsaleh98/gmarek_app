import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohamed_ibrahim/screens/search_list.dart';
import 'package:mohamed_ibrahim/splash_screen.dart';
import 'package:mohamed_ibrahim/widgets/homePage/build_all_phones.dart';
import 'package:mohamed_ibrahim/widgets/homePage/build_categories.dart';
import 'package:mohamed_ibrahim/widgets/homePage/build_popular_phone.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: isDarkMode
            ? const Color(0xff06090d) //background color
            : Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
          ),
          child: SizedBox(
            height: size.width * 0.1,
            width: size.width * 0.1,
            child: Container(
              decoration: BoxDecoration(
                color: isDarkMode
                    ? const Color(0xff06090d) //box color
                    : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
              ),
              child: Icon(
                UniconsLine.bars,
                color: isDarkMode
                    ? Colors.white //icon color
                    : const Color(0xff3b22a1),
                size: size.height * 0.025,
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leadingWidth: size.width * 0.15,
        title: Image.asset(
          isDarkMode
              ? 'assets/images/ابيض.png' //logo asset
              : 'assets/images/اسود.png',
          height: size.height * 0.06,
          width: size.width * 0.35,
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              right: size.width * 0.05,
            ),
            child: Container(
              height: size.width * 0.1,
              width: size.width * 0.1,
              decoration: BoxDecoration(
                color: isDarkMode
                    ? const Color(0xff06090d) //box color
                    : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),

///////////////////////seARch barrrrrrrrrrrrrrrrrrrrrrrrrrr

              child: IconButton(
                icon: Icon(
                  UniconsLine.search,
                  color: isDarkMode
                      ? Colors.white //icon color
                      : const Color(0xff3b22a1),
                  size: size.height * 0.025,
                ),
                onPressed: () {
                  //  Get.to(SearchList);
                },
              ),
              ///////////////////////////////////
            ),
          ),
        ],
      ),
      // bottomNavigationBar: buildBottomNavBar(1, size, isDarkMode),
      body: Container(
        color: isDarkMode
            ? const Color(0xff06090d) //box color
            : Colors.white,
        child: ListView(
          controller: controller,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.03,
                left: size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phones',
                    style: GoogleFonts.poppins(
                      color: isDarkMode
                          ? Colors.white.withOpacity(0.7)
                          : Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.1),
                    child: Icon(
                      UniconsLine.search,
                      color:
                          isDarkMode ? Colors.white : const Color(0xff3b22a1),
                      size: size.width * 0.06,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Text(
            //   'General Manger Mohamed Ibrahim',
            //   style: GoogleFonts.poppins(
            //     color:
            //         isDarkMode ? Colors.white.withOpacity(0.7) : Colors.black,
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // Container(
            //   child: Image.asset(
            //     'assets/images/cc5f007b-1924-4b5d-9ae4-d2526e5c0b89.jpg',
            //     fit: BoxFit.scaleDown,
            //     height: 450,
            //     //  width: 100,
            //   ),
            // ),

            // buildCategories(
            //   size,
            //   isDarkMode,
            // ),
            buildPopularPhone(
              size,
              isDarkMode,
            ),
            buildAllPhones(
              size,
              isDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}
