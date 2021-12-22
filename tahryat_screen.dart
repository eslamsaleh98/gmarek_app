import 'package:flutter/material.dart';

class Tahryat extends StatefulWidget {
  Tahryat({Key? key}) : super(key: key);

  @override
  _TahryatState createState() => _TahryatState();
}

class _TahryatState extends State<Tahryat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          '  التحريات',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Text(
                      " التحريات الجنائية ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test22',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(thickness: 3),
                Row(
                  children: <Widget>[
                    const Text(
                      " معلومات جنائية مسجلة ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test23',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "أ- رقم القضية ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "ب- نوع القضية ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 4,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " احكام جنائية مسجلة ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test26',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "أ-  مخالفة ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " رقم القضية :",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " نوع القضية :",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 4,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "ب-  جنحة ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " رقم القضية :",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " نوع القضية :",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 4,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "ج-  جناية ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " رقم القضية :",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " نوع القضية :",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 4,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'الاتجاهات',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "سياسي",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      " ديني",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "افكار متطرفة",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "مثري الناس",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "خلايا نائمة ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "متعاطف ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "تحت الرقابة",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "تحت التحفظ ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 4,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'الانضمامات',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "حزب",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "حركة",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test24',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "رابطة",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "جمعية ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: Text(
                        'test25',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
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
