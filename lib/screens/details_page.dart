import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohamed_ibrahim/widgets/detailsPage/build_button.dart';
import 'package:mohamed_ibrahim/widgets/detailsPage/build_components.dart';
import 'package:unicons/unicons.dart';

class DetailsPage extends StatefulWidget {
  final String name;
  final dynamic price;
  final String phoneCategories;
  final String ram;
  final String processor;
  final String wifi;
  final double rating;

  final String phoneImage;
  const DetailsPage({
    Key? key,
    required this.name,
    required this.price,
    required this.phoneCategories,
    required this.ram,
    required this.processor,
    required this.wifi,
    required this.rating,
    required this.phoneImage,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: isDarkMode
              ? const Color(0xff06090d) //bg color
              : Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.1,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isDarkMode
                        ? const Color(0xff06090d) //bd color
                        : Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    UniconsLine.multiply,
                    color: isDarkMode
                        ? Colors.white //icon color
                        : const Color(0xff3b22a1),
                    size: size.height * 0.025,
                  ),
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
        ),
      ),
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: isDarkMode
                ? const Color(0xff06090d) //bd color
                : const Color(0xfff8f8f8),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Stack(
                children: [
                  ListView(
                    //physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Image.network(
                        widget.phoneImage,
                        height: size.height * 0.535,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.phoneCategories,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              color: isDarkMode
                                  ? Colors.white
                                  : const Color(0xff3b22a1),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(
                          //   height: 50,
                          // ),
                          // IconButton(
                          //     onPressed: () {
                          //       Get.to(PhoneList());
                          //     },
                          //     icon: Icon(Icons.face)),
                          const Spacer(),
                          Icon(
                            Icons.star,
                            color:
                                isDarkMode ? Colors.yellow : Colors.yellow[700],
                            size: size.width * 0.05,
                          ),
                          Text(
                            "${widget.rating}",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              color: isDarkMode
                                  ? Colors.yellow
                                  : Colors.yellow[700],
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.name,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              color: isDarkMode
                                  ? Colors.white
                                  : const Color(0xff3b22a1),
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "${widget.price} EGP",
                            style: GoogleFonts.lato(
                              color: isDarkMode
                                  ? Colors.white
                                  : const Color(0xff3b22a1),
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildComponents(
                              UniconsLine.mobile_android,
                              'Processor',
                              widget.processor,
                              size,
                              isDarkMode,
                            ),
                            buildComponents(
                              UniconsLine.chart,
                              'Ram',
                              widget.ram,
                              size,
                              isDarkMode,
                            ),
                            buildComponents(
                              UniconsLine.database,
                              'Storage',
                              widget.wifi,
                              size,
                              isDarkMode,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.03,
                        ),
                      ),
                      // Icon(
                      //   Icons.whatsapp,
                      //   color: Colors.black,
                      //   size: 50,
                      // ),
                      // Text(
                      //   'Select Location',
                      //   style: GoogleFonts.poppins(
                      //     color: isDarkMode
                      //         ? Colors.white
                      //         : const Color(0xff3b22a1),
                      //     fontSize: size.width * 0.055,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),

                      // Center(
                      //   child: SizedBox(
                      //     height: size.height * 0.15,
                      //     width: size.width * 0.9,
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //         color: isDarkMode
                      //             ? Colors.white.withOpacity(0.05)
                      //             : Colors.white,
                      //         borderRadius: const BorderRadius.all(
                      //           Radius.circular(
                      //             10,
                      //           ),
                      //         ),
                      //       ),
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Padding(
                      //             padding: EdgeInsets.symmetric(
                      //               horizontal: size.width * 0.05,
                      //               vertical: size.height * 0.015,
                      //             ),
                      //             child: Column(
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               children: [
                      //                 Icon(
                      //                   UniconsLine.map_marker,
                      //                   color: const Color(0xff3b22a1),
                      //                   size: size.height * 0.05,
                      //                 ),
                      //                 Text(
                      //                   'Katowice Airport',
                      //                   textAlign: TextAlign.center,
                      //                   style: GoogleFonts.poppins(
                      //                     color: isDarkMode
                      //                         ? Colors.white
                      //                         : const Color(0xff3b22a1),
                      //                     fontSize: size.width * 0.05,
                      //                     fontWeight: FontWeight.bold,
                      //                   ),
                      //                 ),
                      //                 Text(
                      //                   'Wolności 90, 42-625 Pyrzowice',
                      //                   textAlign: TextAlign.center,
                      //                   style: GoogleFonts.poppins(
                      //                     color: isDarkMode
                      //                         ? Colors.white.withOpacity(0.7)
                      //                         : Colors.black.withOpacity(0.7),
                      //                     fontSize: size.width * 0.032,
                      //                     fontWeight: FontWeight.bold,
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             height: size.height * 0.15,
                      //             width: size.width * 0.25,
                      //             child: Container(
                      //               decoration: const BoxDecoration(
                      //                 color: Colors.black,
                      //                 borderRadius: BorderRadius.all(
                      //                   Radius.circular(
                      //                     10,
                      //                   ),
                      //                 ),
                      //               ),
                      //               child: Align(
                      //                 child: Text(
                      //                   'Map Preview',
                      //                   textAlign: TextAlign.center,
                      //                   style: GoogleFonts.poppins(
                      //                     color: Colors.white,
                      //                     fontSize: size.width * 0.04,
                      //                     fontWeight: FontWeight.bold,
                      //                   ),
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                  buildButton(size, isDarkMode),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
