import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Padding buildButton(Size size, bool isDarkMode) {
  const String _url =
      'https://api.whatsapp.com/send/?phone=+201028232772&text=السلام عليكم';
  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  return Padding(
    padding: EdgeInsets.only(
      top: size.height * 0.8,
      right: size.width * 0.03,
      left: size.width * 0.08,
    ),
    child: SizedBox(
      height: size.height * 0.08,
      width: size.width * 0.75,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            color: const Color(0xff3b22a1),
          ),
          child: TextButton(
            clipBehavior: Clip.hardEdge,
            onPressed: () {
              _launchURL();
            },
            child: Text(
              'Buy Now',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
