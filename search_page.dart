import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:get/get.dart';
import 'package:gmarek_app/component/DataController.dart';

import 'profile_screen.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late QuerySnapshot snapshotData;
  late bool isExcecuted = false;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget searchData() {
      return ListView.builder(
          itemCount: snapshotData.docs.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ProfileScreen())),
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                child: ListTile(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ProfileScreen())),
                  },
                  leading: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              opaque: false,
                              pageBuilder: (BuildContext context, _, __) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Center(
                                    child: Hero(
                                      tag: 'dfghd',
                                      child: (GestureDetector(
                                        child: ClipRRect(
                                          child: Image.asset(
                                            'assets/images/R.jfif',
                                            width: 300,
                                            height: 300,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(75),
                          child: Image.asset(
                            'assets/images/R.jfif',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                  title: Text(
                    snapshotData.docs[index]['name'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          snapshotData.docs[index]['nickname'],
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          snapshotData.docs[index]['id_botaka'],
                          style: const TextStyle(
                              fontSize: 15.0, color: Colors.black),
                        ),
                        Text(
                          snapshotData.docs[index]['phone'],
                          //textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 15.0, color: Colors.black),
                        ),
                      ]),
                ),
              ),
            );
          });
    }

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.clear),
          onPressed: () {
            setState(() {
              isExcecuted = false;
            });
          },
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          actions: [
            GetBuilder<DataController>(
              init: DataController(),
              builder: (val) {
                return AnimSearchBar(
                  rtl: true,
                  width: 330,
                  autoFocus: true,
                  closeSearchOnSuffixTap: true,
                  textController: textController,
                  onSuffixTap: () {
                    val.queryData(textController.text).then(
                      (value) {
                        snapshotData = value;
                        setState(() {
                          isExcecuted = true;
                        });
                      },
                    );
                  },
                );
              },
            ),
          ],
          // title: TextField(
          //   style: TextStyle(color: Colors.white),
          //   decoration: InputDecoration(hintText: 'Search'),
          //   controller: textController,
          // ),
        ),
        body: isExcecuted
            ? searchData()
            : Container(
                child: const Center(
                  child: Text('بحث عن اي موظف'),
                ),
              ));
  }
}

//   @override
//   Widget build(BuildContext context) {
//     Widget searchedData() {
//       return ListView.builder(
//         itemCount: snapshotData.docs.length,
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () => {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (_) => ProfileScreen())),
//             },
//             child: ListTile(
//               leading: const CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/R.jfif'),
//               ),
//               title: Text(
//                 snapshotData.docs[index]['name'],
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 22.0),
//               ),
//               subtitle: Text(
//                 snapshotData.docs[index]['nickname'],
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16.0),
//               ),
//             ),
//           );
//         },
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           GetBuilder<DataController>(
//             init: DataController(),
//             builder: (val) {
//               return AnimSearchBar(
//                 rtl: true,
//                 helpText: "...ابحث عن موظف",
//                 width: 400,
//                 textController: textController,
//                 onSuffixTap: () {
//                   val.queryData(textController.text).then(
//                     (value) {
//                       snapshotData = value;
//                       setState(
//                         () {
//                           isExcecuted = true;
//                         },
//                       );
//                     },
//                   );
//                 },
//               );
//             },
//           ),
//         ],
//         title: TextField(
//           style: const TextStyle(color: Colors.white),
//           decoration: const InputDecoration(
//               hintText: 'Search..', hintStyle: TextStyle(color: Colors.white)),
//           controller: textController,
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: isExcecuted ? searchedData() : Container(child: searchedData()),
//     );
//   }
// }
