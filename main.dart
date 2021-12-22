import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gmarek_app/screens/login.dart';

import 'home_page.dart';

var islogin;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    islogin = false;
  } else {
    islogin = true;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الامن الجمركي ',
      debugShowCheckedModeBanner: false,
      home: islogin == false ? const Login() : const HomePage(),
      routes: {
        '/HomePage': (ctx) => const HomePage(),
        '/Login': (ctx) => const Login(),
      },
    );
  }
}
