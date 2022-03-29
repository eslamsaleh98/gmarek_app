import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:mohamed_ibrahim/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        defaultTransition: Transition.native,
        transitionDuration: const Duration(milliseconds: 500),
        debugShowCheckedModeBanner: false,
        title: 'Hema Store',
        home: SplashScreen());
    //  AnimatedSplashScreen(
    //     duration: 3000,
    //     splash: Image.asset(
    //       'assets/images/SobGOGdark.png',
    //       height: 300,
    //       width: 300,
    //     ),
    //     nextScreen: const HomePage(),
    //     splashTransition: SplashTransition.rotationTransition,
    //     backgroundColor: Colors.blue));
  }
}
