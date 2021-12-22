import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  CollectionReference userdata = FirebaseFirestore.instance.collection("gdata");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          'بيانات الموظف الرسمية',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
            future: userdata.where("id").get(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, i) {
                      return Dismissible(
                        onDismissed: (diretion) async {
                          await userdata
                              .doc(snapshot.data!.docs[i].id)
                              .delete();
                          await FirebaseStorage.instance
                              .refFromURL(
                                  snapshot.data!.docs[i]['profile_photo'])
                              .delete()
                              .then((value) {
                            print("=================================");
                            print("Delete");
                          });
                        },
                        key: UniqueKey(),
                        child: Card(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image.network(
                                  "${snapshot.data!.docs[i]['name']}",
                                  fit: BoxFit.fill,
                                  height: 80,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: ListTile(
                                    title: Text(
                                        "${snapshot.data!.docs[i]['name']}"),
                                    subtitle: Text(
                                      "${snapshot.data!.docs[i]['name']}",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      //   Navigator.of(context)
                                      //    .push(MaterialPageRoute(builder: (context) {
                                      // return EditNotes(docid: docid, list: notes);
                                      icon: Icon(Icons.edit),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }
              return const Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
