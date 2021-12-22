import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gmarek_app/screens/add_list.dart';
import 'package:gmarek_app/screens/search_page.dart';
import 'package:gmarek_app/screens/user_details.dart';
import 'package:gmarek_app/screens/user_list.dart';
import 'package:gmarek_app/test.dart';

import 'my_flutter_app_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getUser() {
    var user = FirebaseAuth.instance.currentUser;
    print(user!.email);
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> screen = [
    UserList(),
    UserDetails(),
    SearchPage(),
    AddList(),
  ];
  List<String> titles = [
    'قائمة الموظفين ',
    'تفاصيل الموظفين',
    'بحث عن موظف ',
    'اضافة موظف جديد',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView(
            children: <Widget>[
              Container(
                child: const Text(
                  "الامن الجمركي",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                height: 50,
                padding: const EdgeInsets.all(12.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ListTile(
                  title: const Text("اضافة موظف جديد"),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Test()));
                  },
                ),
              ),
              ListTile(
                title: const Text("بحث عن موظف"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SearchPage()));
                },
              ),
              ListTile(
                title: const Text("اضافة اخبارية"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => UserDetails()));
                  //   Navigator.pop(context);
                  //Navigator.push(context,
                  // new MaterialPageRoute(builder: (ctxt) => new RetiredEmployeeScreen()));
                  // },
                },
              ),
              ListTile(
                title: const Text("اضافة تقرير"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("علاوة جديدة"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("جزاء جديد"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(" تسجيل الخروج"),
                leading: const Icon(Icons.exit_to_app),
                onTap: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Navigator.of(context).pushReplacementNamed('/Login');
                  }).catchError((e) {
                    print(e);
                  });
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'الأمن الجمركي  ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[600],
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        elevation: 50,
        selectedItemColor: Colors.blue[900],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.document_2036093),
            label: 'قائمة الموظفين',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.bookmark_2036099),
            label: 'بيانات الموظفين',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.search_2036081),
            label: 'بحث عن موظف',
          ),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.plus_2036084), label: 'اضافة موظف جديد'),
        ],
      ),
      body:
          // tasks.length == 0
          //? Center(child: CircularProgressIndicator())
          //  :
          screen[currentIndex],
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'k',
      //   backgroundColor: Theme.of(context).primaryColor,
      //   child: Icon(Icons.add),
      //   onPressed: () => {
      //     Navigator.push(context, MaterialPageRoute(builder: (_) => AddList()))
      //   },
      // ),
    );
  }
}
