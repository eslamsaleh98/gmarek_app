import 'package:flutter/material.dart';
import 'package:mohamed_ibrahim/data/phones_data.dart';
import 'package:mohamed_ibrahim/widgets/homePage/build_category.dart';
import 'package:mohamed_ibrahim/widgets/homePage/build_phone.dart';

Widget buildAllPhones(Size size, bool isDarkMode) {
  return Column(
    children: [
      buildCategory('All Phones', size, isDarkMode),
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.03,
          left: size.width * 0.03,
        ),
        child: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: true,
            children: <Widget>[
              SizedBox(
                width: size.width,
                height: size.height * 1.02,
                child: GridView.builder(
                  reverse: false,
                  primary: false,
                  //   physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 6,
                  ),
                  itemCount: phones.length,
                  itemBuilder: (context, i) {
                    return buildPhone(
                      i,
                      size,
                      isDarkMode,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
