import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gmarek_app/component/alert.dart';
import 'package:gmarek_app/screens/edit_list.dart';
import 'package:gmarek_app/screens/profile_screen.dart';
import 'package:gmarek_app/screens/user_details.dart';

class UserList extends StatefulWidget {
  UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  final name = TextEditingController();
  final job = TextEditingController();
  // final id = TextEditingController();
  final address = TextEditingController();
  final side_of_botaka = TextEditingController();

  final address_in_past = TextEditingController();
  final address_now = TextEditingController();
  final birthdate = TextEditingController();
  final date_eldaraga = TextEditingController();
  final date_of_work = TextEditingController();
  final eldaraga = TextEditingController();
  final elden = TextEditingController();
  final elhaseb_elaly = TextEditingController();
  final elmoahel = TextEditingController();
  final elwaseka_photo = TextEditingController();
  final graduate_and_date_of_of_it = TextEditingController();
  final id_botaka = TextEditingController();
  final id_location = TextEditingController();
  final id_phpto = TextEditingController();
  final job_in_past = TextEditingController();
  final national = TextEditingController();
  final nickname = TextEditingController();
  final nickname_tow = TextEditingController();
  final notes = TextEditingController();
  final number_of_taamen = TextEditingController();
  final phone = TextEditingController();
  final phone_home = TextEditingController();
  final profile_photo = TextEditingController();
  final salary = TextEditingController();
  final side_job = TextEditingController();
  final status = TextEditingController();
  final eltasreh = TextEditingController();
  final t_g = TextEditingController();
  final r_t_g = TextEditingController();
  final r_t_g_a = TextEditingController();
  final r_t_g_a_c = TextEditingController();
  final r_t_g_g = TextEditingController();
  final etgahat = TextEditingController();
  final endemam = TextEditingController();
  final q_a = TextEditingController();
  final q_b = TextEditingController();
  final q_c = TextEditingController();
  final q_e = TextEditingController();
  final q_d = TextEditingController();

  final status_of_tagned = TextEditingController();
  final worker_status = TextEditingController();
  // final address = TextEditingController();
  // final address = TextEditingController();
  String? _id;
  String? cname = '';
  String? cnickname = '';
  String? cnickname_tow = '';
  String? celhaseb_elaly = '';
  String? cid_botaka = '';
  String? cnational = '';
  String? cid_location = '';
  String? celden = '';
  String? cstatus = '';
  String? cbirthdate = '';
  String? cphone_home = '';
  String? cnumber_of_taamen = '';
  String? celmoahel = '';
  String? cstatus_of_tagned = '';
  String? cdate_of_work = '';
  String? cphone = '';
  String? caddress = '';
  String? caddress_in_past = '';
  String? caddress_now = '';
  String? celdaraga = '';
  String? cdate_eldaraga = '';
  String? cgraduate_and_date_of_of_it = '';
  String? cjob = '';
  String? cjob_in_past = '';
  String? csalary = '';
  String? cside_job = '';
  String? cworker_status = '';
  String? cnotes = '';
  String? cid_phpto = '';
  String? cprofile_photo = '';
  String? celwaseka_photo = '';
  String? cside_of_botaka = '';
  String? celtasreh = '';
  String? ct_g = '';
  String? cr_t_g = '';
  String? cr_t_g_a = '';
  String? cr_t_g_a_c = '';
  String? cr_t_g_g = '';
  String? cetgahat = '';
  String? cendemam = '';
  String? cq_a = '';
  String? cq_b = '';
  String? cq_c = '';
  String? cq_e = '';
  String? cq_d = '';
  final Stream<QuerySnapshot> gdata =
      FirebaseFirestore.instance.collection("gdata").snapshots();

  deleteData() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('gdata');
    QuerySnapshot querySnapshot = await collectionReference.where('id').get();
    FirebaseFirestore.instance.collection('gdata').doc('id').delete();
    //.whenComplete(() => Navigator.pop(context));
  }

  _recovry() {
    FirebaseFirestore.instance.collection("gdata").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        FirebaseFirestore.instance
            .collection('gdata')
            .doc(result.id)
            .collection('pets')
            .get()
            .then((querySnapshot) {
          querySnapshot.docs.forEach((result) {
            print(result.data());
          });
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Text('استرجاع '),
        onPressed: () {
          _recovry();
        },
      ),
      //appBar: AppBar(),
      body: StreamBuilder<QuerySnapshot>(
        stream: gdata,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(
                child: Text(
              'حدث خطا اثناء جلب البيانات',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.requireData;
          return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              // key: UniqueKey(),
              itemBuilder: (context, i) {
                return Dismissible(
                  onDismissed: (diretion) async {
                    await FirebaseStorage.instance
                        .refFromURL(snapshot.data!.docs[i]['profile_photo'])
                        .delete()
                        .then((value) {
                      print("=================================");
                      print("Delete");
                    });
                  },
                  key: UniqueKey(),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 10,
                    child: ListTile(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => UserDetails())),
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
                                              child: Image.network(
                                                data.docs[i]['profile_photo'],
                                                width: 300,
                                                height: 300,
                                                fit: BoxFit.cover,
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
                              child: Image.network(
                                data.docs[i]['profile_photo'],
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
                      title: Text(
                        "اسم الموظف : ${data.docs[i]['name']}",
                        maxLines: 3,
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
                            "اسم الشهرة : ${data.docs[i]['nickname']}",
                            maxLines: 3,
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "الرقم القومي:${data.docs[i]['id_botaka']}",
                            style: const TextStyle(
                                fontSize: 15.0, color: Colors.black),
                          ),
                          Text(
                            "رقم الهاتف: ${data.docs[i]['phone']}",
                            //textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontSize: 15.0, color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => EditList(
                                              docid: snapshot.data!.docs[i]))),
                                },
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => EditList(
                                                    docid: snapshot
                                                        .data!.docs[i]))),
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Text('Edit',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: deleteData,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: deleteData,
                                      icon: const Icon(Icons.delete),
                                      color: Colors.red[700],
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Text('Delete',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.red[700],
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),

                              /*Text(
                        "Website : ${website.toString()}",
                        style: TextStyle(fontSize: 15.0),
                      ),*/
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }

              // children: snapshot.data!.docs.map((DocumentSnapshot document) {
              //   Map<String, dynamic> users =
              //       document.data()! as Map<String, dynamic>;
              //   return Text(
              //     "${users['name']} ${users['job']}",
              //     style: TextStyle(color: Colors.black),
              //   );
              // }).toList(),

              );
        },
      ),
    );
  }

  _showDeleteDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('delete'),
            content: Text('Are you sure you want to delete?'),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              FlatButton(
                  onPressed: () {
                    deleteData();
                  },
                  child: Text('Delete'))
            ],
          );
        });
  }
// _showDeleteDialog({required Map contact}) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text('Delete ${contact['name']}'),
//             content: Text('Are you sure you want to delete?'),
//             actions: [
//               FlatButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text('Cancel')),
//               FlatButton(
//                   onPressed: () {
//                     reference
//                         .child(contact['key'])
//                         .remove()
//                         .whenComplete(() => Navigator.pop(context));
//                   },
//                   child: Text('Delete'))
//             ],
//           );
//         });
//   }

// Text(
//                     'My name is ${data.docs[index]['name']} and age is ${data.docs[index]['age']} ');
//                     }

}
