import 'package:flutter/material.dart';
import 'package:mohamed_ibrahim/data/phones_data.dart';
import 'package:mohamed_ibrahim/widgets/homePage/build_phone.dart';

class PhoneList extends StatefulWidget {
  PhoneList({Key? key}) : super(key: key);

  @override
  State<PhoneList> createState() => _PhoneListState();
}

class _PhoneListState extends State<PhoneList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: phones.length,
        itemBuilder: (context, i) {
          return buildPhone(
            i,
            size,
            isDarkMode,
          );
        },
      ),
    );
  }
}
