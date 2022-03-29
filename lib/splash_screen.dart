import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_ibrahim/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode
          ? const Color(0xff06090d) //background color
          : Colors.white,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        // shadowColor: Colors.transparent,
        backgroundColor: isDarkMode
            ? const Color(0xff06090d) //background color
            : Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        //  mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: AnimatedSplashScreen(
            duration: 7000,
            splash: Image.asset(
              isDarkMode
                  ? 'assets/images/ابيض.png' //logo asset
                  : 'assets/images/اسود.png',
              height: size.height * 0.3,
              width: size.width * 0.6,
            ),
            nextScreen: const HomePage(),
            splashIconSize: 300,
            splashTransition: SplashTransition.sizeTransition,
            backgroundColor: isDarkMode
                ? const Color(0xff06090d) //background color
                : Colors.white,
          )),
          CircularProgressIndicator(
            color: Colors.blue[800],
          ),
          const SizedBox(
            height: 10,
          ),
          // Image.asset(
          //   'assets/images/اسود.png',
          //   height: size.height * 0.06,
          //   width: size.width * 0.35,
          // ),
          // const Text(
          //   'Loading......',
          //   style: TextStyle(color: Colors.blue),
          // ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'from',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800]),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Eslam Saleh',
            style: TextStyle(
                fontSize: 35,
                // fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Georama',
                color: Colors.blue[800]),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
