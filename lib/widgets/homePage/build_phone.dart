import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohamed_ibrahim/data/phones_data.dart';
import 'package:mohamed_ibrahim/screens/details_page.dart';

Padding buildPhone(int i, Size size, bool isDarkMode) {
  return Padding(
    padding: EdgeInsets.only(
      right: size.width * 0.01,
    ),
    child: Container(
      width: size.width * 0.5,
      decoration: BoxDecoration(
        color: isDarkMode
            ? const Color(0xff090f17).withOpacity(0.5)
            : Colors.grey.withOpacity(0.4),
        borderRadius: const BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: InkWell(
        onTap: () {
          Get.to(
            DetailsPage(
              name: phones[i]['name'],
              price: phones[i]['price'],
              phoneCategories: phones[i]['phoneCategories'],
              ram: phones[i]['ram'],
              processor: phones[i]['processor'],
              wifi: phones[i]['wifi'],
              rating: phones[i]['rating'],
              phoneImage: phones[i]['phoneImage'],
            ),
          );
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.03,
                left: size.width * 0.03,
                right: size.width * 0.03,
              ),
              child: SizedBox(
                width: size.width * 0.3,
                height: size.height * 0.22,
                child: Image.network(
                  phones[i]['phoneImage'],
                  errorBuilder: (context, error, stackTrace) {
                    return const CircularProgressIndicator.adaptive();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.02,
              ),
              child: SizedBox(
                width: size.width * 0.4,
                child: Text(
                  phones[i]['name'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: isDarkMode
                        ? Colors.white.withOpacity(0.7)
                        : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 7, vertical: size.height * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    phones[i]['phoneCategories'],
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                      color: isDarkMode
                          ? Colors.white.withOpacity(0.3)
                          : Colors.indigo,
                      fontSize: 12,
                      //  fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  Text(
                    "${phones[i]['price']} EGP",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                      color: isDarkMode
                          ? Colors.white.withOpacity(0.6)
                          : Colors.indigo,
                      fontSize: size.height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
