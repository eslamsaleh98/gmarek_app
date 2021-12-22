import 'dart:io';
import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gmarek_app/component/alert.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../my_flutter_app_icons.dart';

//import 'dart:html'as html;

class AddList extends StatefulWidget {
  AddList({Key? key}) : super(key: key);

  @override
  _AddListState createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  // final firestoreInstance = FirebaseFirestore.instance;

  late File file;
  late Reference ref;
  //late Reference ref_tow;
  //late Reference ref_thre;

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
  Future<void> addData(context) async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      showLoading(context);
      formdata.save();
      await ref.putFile(file);
      cprofile_photo = await ref.getDownloadURL();
      cid_phpto = await ref.getDownloadURL();
      celwaseka_photo = await ref.getDownloadURL();

      Map<String, dynamic> userInfo = {
        'id': FirebaseAuth.instance.currentUser!.uid,
        "side_of_botaka": cside_of_botaka,
        "address": caddress,
        "address_in_past": caddress_in_past,
        "address_now": caddress_now,
        "birthdate": cbirthdate,
        "date_eldaraga": cdate_eldaraga,
        "date_of_work": cdate_of_work,
        "eldaraga": celdaraga,
        "elden": celden,
        "elhaseb_elaly": celhaseb_elaly,
        "elmoahel": celmoahel,
        "elwaseka_photo": celwaseka_photo,
        "graduate_and_date_of_of_it": cgraduate_and_date_of_of_it,
        "id_botaka": cid_botaka,
        "id_location": cid_location,
        "id_phpto": cid_phpto,
        "job": cjob,
        "job_in_past": cjob_in_past,
        "name": cname,
        "national": cnational,
        "nickname": cnickname,
        "nickname_tow": cnickname_tow,
        "notes": cnotes,
        "number_of_taamen": cnumber_of_taamen,
        "phone": cphone,
        "phone_home": cphone_home,
        "profile_photo": cprofile_photo,
        "salary": csalary,
        "side_job": cside_job,
        "status": cstatus,
        "status_of_tagned": cstatus_of_tagned,
        "eltasreh": celtasreh,
        "worker_status": cworker_status,
        "t_g": ct_g,
        "r_t_g": cr_t_g,
        "r_t_g_a": cr_t_g_a,
        "r_t_g_a_c": cr_t_g_a_c,
        "r_t_g_g": cr_t_g_g,
        "etgahat": cetgahat,
        "endemam": cendemam,
        "q_a": cq_a,
        "q_b": cq_b,
        "q_c": cq_c,
        "q_e": cq_e,
        "q_d": cq_d
      };
      CollectionReference userdata =
          FirebaseFirestore.instance.collection("gdata");
      await userdata.add(userInfo).then((value) {
        setState(() {
          Navigator.of(context).pushNamed('/HomePage');
        });
      }).catchError((value) {
        print(value);
      });
    }
  }

  // photo2() async {
  //   final XFile? image = await picked.pickImage(source: ImageSource.gallery);

  //   if (image == null)
  //     return;
  //   else {
  //     setState(() {
  //       pickedImage = File(image.path);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'اضافة موظف',
      //     style: TextStyle(fontFamily: 'Georama'),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Form(
                key: formstate,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            showBottomSheet(context);
                          },
                          child: const Text("اضافة صورة شخصية"),
                        ),
                      ],
                    ),
                    //       const Placeholder(),

                    const SizedBox(height: 15),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            showBottomSheetTow(context);
                            // print('تم تحميل الصورة بنجاح!');
                          },
                          child: const Text("اضافة شهادة الميلاد"),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            showBottomSheetThre(context);
                          },
                          child: const Text('اضافة وثيقة التعارف'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      thickness: 10,
                    ),

                    // if (pickedImagee == null)
                    //   const Placeholder()
                    // else
                    //   Image.file(pickedImagee!),

                    TextFormField(
                      controller: name,
                      onSaved: (String? value) {
                        cname = name.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الاسم رباعي",
                        // errorText: 'h;sdfg',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(MyFlutterApp.profile_2036083),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cname = name.text;
                      },
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      controller: phone,
                      onSaved: (String? value) {
                        cphone = phone.text;
                      },
                      decoration: InputDecoration(
                        labelText: "رقم الهاتف",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cphone = phone.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ////////////////////////////////////////////////////////////////////////////////////////////////////
                    TextFormField(
                      controller: address,
                      onSaved: (String? value) {
                        caddress = address.text;
                      },
                      decoration: InputDecoration(
                        labelText: "العنوان",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(MyFlutterApp.location_2036087),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        caddress = address.text;
                      },
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: id_botaka,
                      onSaved: (String? value) {
                        cid_botaka = id_botaka.text;
                      },
                      onChanged: (String? value) {
                        cid_botaka = id_botaka.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الرقم القومي",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(Icons.recent_actors),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: job,
                      onSaved: (String? value) {
                        cjob = job.text;
                      },
                      onChanged: (String? value) {
                        cjob = job.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الوظيفة",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(MyFlutterApp.bag_2036100),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: birthdate,
                      onSaved: (String? value) {
                        cbirthdate = birthdate.text;
                      },
                      decoration: InputDecoration(
                        labelText: "تاريخ الميلاد",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(Icons.date_range),
                      ),
                      keyboardType: TextInputType.datetime,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cbirthdate = birthdate.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: notes,
                      onSaved: (String? value) {
                        cnotes = notes.text;
                      },
                      decoration: InputDecoration(
                        labelText: "اضافة ملاحظة",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        prefixIcon: const Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cnotes = notes.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: elhaseb_elaly,
                      onSaved: (String? value) {
                        celhaseb_elaly = elhaseb_elaly.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الحاسب الالي",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        // prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        celhaseb_elaly = elhaseb_elaly.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nickname,
                      onSaved: (String? value) {
                        cnickname = nickname.text;
                      },
                      decoration: InputDecoration(
                        labelText: "اسم الشهرة",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //  prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cnickname = nickname.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nickname_tow,
                      onSaved: (String? value) {
                        cnickname_tow = nickname_tow.text;
                      },
                      decoration: InputDecoration(
                        labelText: "المسمي الوظيفي",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cnickname_tow = nickname_tow.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: worker_status,
                      onSaved: (String? value) {
                        cworker_status = worker_status.text;
                      },
                      decoration: InputDecoration(
                        labelText: "صفة الموظف",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //     prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cworker_status = worker_status.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: national,
                      onSaved: (String? value) {
                        cnational = national.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الجنسية",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //    prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                      onChanged: (String? value) {
                        cnational = national.text;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: status,
                      onSaved: (String? value) {
                        cstatus = status.text;
                      },
                      onChanged: (String? value) {
                        cstatus = status.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الحالة الاجتماعية",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: elden,
                      onSaved: (String? value) {
                        celden = elden.text;
                      },
                      onChanged: (String? value) {
                        celden = elden.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الديانة",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: phone_home,
                      onSaved: (String? value) {
                        cphone_home = phone_home.text;
                      },
                      onChanged: (String? value) {
                        cphone_home = phone_home.text;
                      },
                      decoration: InputDecoration(
                        labelText: "تليفون المنزل",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //              prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: side_of_botaka,
                      onSaved: (String? value) {
                        cside_of_botaka = side_of_botaka.text;
                      },
                      onChanged: (String? value) {
                        cside_of_botaka = side_of_botaka.text;
                      },
                      decoration: InputDecoration(
                        labelText: "جهة اصدار البطاقة",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //    prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: number_of_taamen,
                      onSaved: (String? value) {
                        cnumber_of_taamen = number_of_taamen.text;
                      },
                      onChanged: (String? value) {
                        cnumber_of_taamen = number_of_taamen.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الرقم التأميني",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //      prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: elmoahel,
                      onSaved: (String? value) {
                        celmoahel = elmoahel.text;
                      },
                      onChanged: (String? value) {
                        celmoahel = elmoahel.text;
                      },
                      decoration: InputDecoration(
                        labelText: "المؤهل التعليمي",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //     prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: status_of_tagned,
                      onSaved: (String? value) {
                        cstatus_of_tagned = status_of_tagned.text;
                      },
                      onChanged: (String? value) {
                        cstatus_of_tagned = status_of_tagned.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الموقف من التجنيد",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: date_of_work,
                      onSaved: (String? value) {
                        cdate_of_work = date_of_work.text;
                      },
                      onChanged: (String? value) {
                        cdate_of_work = date_of_work.text;
                      },
                      decoration: InputDecoration(
                        labelText: "تاريخ التعيين ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: address_in_past,
                      onSaved: (String? value) {
                        caddress_in_past = address_in_past.text;
                      },
                      onChanged: (String? value) {
                        caddress_in_past = address_in_past.text;
                      },
                      decoration: InputDecoration(
                        labelText: " محل الاقامة السابق",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: address_now,
                      onSaved: (String? value) {
                        caddress_now = address_now.text;
                      },
                      onChanged: (String? value) {
                        caddress_now = address_now.text;
                      },
                      decoration: InputDecoration(
                        labelText: " محل الاقامة الحالي",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //    prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: eldaraga,
                      onSaved: (String? value) {
                        celdaraga = eldaraga.text;
                      },
                      onChanged: (String? value) {
                        celdaraga = eldaraga.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الدرجة",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: date_eldaraga,
                      onSaved: (String? value) {
                        cdate_eldaraga = date_eldaraga.text;
                      },
                      onChanged: (String? value) {
                        cdate_eldaraga = date_eldaraga.text;
                      },
                      decoration: InputDecoration(
                        labelText: " تاريخ الحصول علي الدرجة",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: graduate_and_date_of_of_it,
                      onSaved: (String? value) {
                        cgraduate_and_date_of_of_it =
                            graduate_and_date_of_of_it.text;
                      },
                      onChanged: (String? value) {
                        cgraduate_and_date_of_of_it =
                            graduate_and_date_of_of_it.text;
                      },
                      decoration: InputDecoration(
                        labelText: "المؤهلات الدراسية وتاريخ الحصول عليها ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //    prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: side_job,
                      onSaved: (String? value) {
                        cside_job = side_job.text;
                      },
                      onChanged: (String? value) {
                        cside_job = side_job.text;
                      },
                      decoration: InputDecoration(
                        labelText: "جهة العمل ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //  prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: job_in_past,
                      onSaved: (String? value) {
                        cjob_in_past = job_in_past.text;
                      },
                      onChanged: (String? value) {
                        cjob_in_past = job_in_past.text;
                      },
                      decoration: InputDecoration(
                        labelText: "الوظيفة السابقة ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //   prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: salary,
                      onSaved: (String? value) {
                        csalary = salary.text;
                      },
                      onChanged: (String? value) {
                        csalary = salary.text;
                      },
                      decoration: InputDecoration(
                        labelText: "المرتب ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //    prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: eltasreh,
                      onSaved: (String? value) {
                        celtasreh = eltasreh.text;
                      },
                      onChanged: (String? value) {
                        celtasreh = eltasreh.text;
                      },
                      decoration: InputDecoration(
                        labelText: "نوع التصريح ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 4,
                    ),
                    const Text(
                      ' التحريات ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 4,
                    ),
                    const Text(
                      ' اولا التحريات الجنائية',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: t_g,
                      onSaved: (String? value) {
                        ct_g = t_g.text;
                      },
                      onChanged: (String? value) {
                        ct_g = t_g.text;
                      },
                      decoration: InputDecoration(
                        labelText: " هل يوجد معلومات جنائية مسجلة ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: r_t_g,
                      onSaved: (String? value) {
                        cr_t_g = r_t_g.text;
                      },
                      onChanged: (String? value) {
                        cr_t_g = r_t_g.text;
                      },
                      decoration: InputDecoration(
                        labelText: " هل يوجد احكام جنائية مسجل ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: r_t_g_a,
                      onSaved: (String? value) {
                        cr_t_g_a = r_t_g_a.text;
                      },
                      onChanged: (String? value) {
                        cr_t_g_a = r_t_g_a.text;
                      },
                      decoration: InputDecoration(
                        labelText: " هل يوجد مخالفة جنائية مسجلة ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: r_t_g_a_c,
                      onSaved: (String? value) {
                        cr_t_g_a_c = r_t_g_a_c.text;
                      },
                      onChanged: (String? value) {
                        cr_t_g_a_c = r_t_g_a_c.text;
                      },
                      decoration: InputDecoration(
                        labelText: " هل يوجد جنحة جنائية مسجلة ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: r_t_g_g,
                      onSaved: (String? value) {
                        cr_t_g_g = r_t_g_g.text;
                      },
                      onChanged: (String? value) {
                        cr_t_g_g = r_t_g_g.text;
                      },
                      decoration: InputDecoration(
                        labelText: " هل يوجد جناية جنائية مسجلة ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 4,
                    ),
                    const Text(
                      ' ثانيا التحريات السياسية',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: etgahat,
                      onSaved: (String? value) {
                        cetgahat = etgahat.text;
                      },
                      onChanged: (String? value) {
                        cetgahat = etgahat.text;
                      },
                      decoration: InputDecoration(
                        labelText: " هل يوجد اتجاه مسجل ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: endemam,
                      onSaved: (String? value) {
                        cendemam = endemam.text;
                      },
                      onChanged: (String? value) {
                        cendemam = endemam.text;
                      },
                      decoration: InputDecoration(
                        labelText: " هل يوجد انضمام مسجل ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: q_a,
                      onSaved: (String? value) {
                        cq_a = q_a.text;
                      },
                      onChanged: (String? value) {
                        cq_a = q_a.text;
                      },
                      decoration: InputDecoration(
                        labelText: "النشاط العام",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: q_b,
                      onSaved: (String? value) {
                        cq_b = q_b.text;
                      },
                      onChanged: (String? value) {
                        cq_b = q_b.text;
                      },
                      decoration: InputDecoration(
                        labelText: " الاندية المشترك بها",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: q_c,
                      onSaved: (String? value) {
                        cq_c = q_c.text;
                      },
                      onChanged: (String? value) {
                        cq_c = q_c.text;
                      },
                      decoration: InputDecoration(
                        labelText:
                            " هل سبق الانضمام لأي حزب سياسي او جمعية دينية او اجتماعية ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: q_d,
                      onSaved: (String? value) {
                        cq_d = q_d.text;
                      },
                      onChanged: (String? value) {
                        cq_d = q_d.text;
                      },
                      decoration: InputDecoration(
                        labelText:
                            " هل سبق اتهامك في اي نوع من القضايا او اعتقالك مع التوضيح ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: q_e,
                      onSaved: (String? value) {
                        cq_e = q_e.text;
                      },
                      onChanged: (String? value) {
                        cq_e = q_e.text;
                      },
                      decoration: InputDecoration(
                        labelText:
                            " هل سبق اتهام احد من الاقارب في اي نشاط  ؟ ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0)),
                        //            prefixIcon: Icon(Icons.notes),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Must be not empty";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.upload,
                        ),
                        TextButton(
                            onPressed: () {
                              showBottomSheet(context);
                            },
                            child: const Text(
                                'رفع صورة في حالة اتهام احد من الاقارب')),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.upload,
                        ),
                        TextButton(
                            onPressed: () {
                              showBottomSheet(context);
                            },
                            child: const Text(
                                'رفع صورة اخري في حالة اتهام احد من الاقارب')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),

            // Flexible(
            //   child: Center(
            //     child: _error == null
            //         ? Text(
            //             'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
            //           )
            //         : Text(
            //             'Error retrieving button tap count:\n${_error!.message}',
            //           ),
            //   ),
            // ),
            ElevatedButton(
                onPressed: () async {
                  await addData(context);
                },
                // "address":'$address',"urlimge":
                // '$urlimge',"birthday":'$birthday',"jobtitle":'$jobtitle',"notes":'$notes',
                //
                // "national_id":'$national_id'
                //
                // }

                // if (formKey.currentState!.validate()) {
                //   //code Add to firebase
                //
                // }
                //   urlimge = curlimge.text;
                //   birthday = cbirthday.text;
                //   jobtitle = cjobtitle.text;
                //   notes = cnotes.text;
                //   national_id = cnational_id.text;
                //   address = caddress.text;
                //   _kTestKey = "ُEmail";
                //   _kTestValue = myController.text;
                //   pass = cpass.text;
                //   name = cname.text;
                //   phone = cphone.text;

                //   await _incrementAsTransaction();
                // },
                child: const Text('اضافة موظف')),

            //    ListTile(
            //       leading: Checkbox(
            //         onChanged: (bool? value) {
            //           if (value != null) {
            //             setState(() {
            //               _anchorToBottom = value;
            //             });
            //           }
            //         },
            //         value: _anchorToBottom,
            //       ),
            //       title: const Text('ترتيب عكس'),
            //     ),
            //     Flexible(
            //       child: FirebaseAnimatedList(
            //         key: ValueKey<bool>(_anchorToBottom),
            //         query: _messagesRef,
            //         reverse: _anchorToBottom,
            //         itemBuilder: (BuildContext context, DataSnapshot snapshot,
            //             Animation<double> animation, int index) {
            //           return SizeTransition(
            //             sizeFactor: animation,
            //             child: ListTile(
            //               trailing: IconButton(
            //                 onPressed: () =>
            //                     _messagesRef.child(snapshot.key!).remove(),
            //                 icon: const Icon(Icons.delete),
            //               ),
            //               title: Text(
            //                 '$index: ${snapshot.value.toString()}',
            //               ),
            //             ),
            //           );
            //         },
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await addData(context);
        },
        //_increment,
        //tooltip: 'Increment',
        child: const Icon(Icons.save_rounded),
      ),
    );
  }

  //Future<void>
  showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(20),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "من فضلك اختار الصورة",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () async {
                    var picked = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (picked != null) {
                      file = File(picked.path);
                      var rand = Random().nextInt(100000);
                      var imagename = "$rand" + basename(picked.path);
                      ref = FirebaseStorage.instance
                          .ref()
                          .child("image/$imagename");
                      print('url : $url');

                      Navigator.of(context).pop();
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.photo_outlined,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "من الاستوديو",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                ),
                InkWell(
                    onTap: () async {
                      var picked = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      if (picked != null) {
                        file = File(picked.path);
                        var rand = Random().nextInt(100000);
                        var imagename = "$rand" + basename(picked.path);
                        ref = FirebaseStorage.instance
                            .ref()
                            .child("image/$imagename");
                        print('url : $url');
                        Navigator.of(context).pop();
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.camera,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "من الكاميرا",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          );
        });
  }

  showBottomSheetTow(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(20),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "من فضلك اختار الصورة",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () async {
                    var pickedTow = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (pickedTow != null) {
                      file = File(pickedTow.path);
                      var rand = Random().nextInt(100000);
                      var imagename = "$rand" + basename(pickedTow.path);
                      ref = FirebaseStorage.instance
                          .ref()
                          .child("image/$imagename");
                      print('url : $url');
                      Navigator.of(context).pop();
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.photo_outlined,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "من الاستوديو",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                ),
                InkWell(
                    onTap: () async {
                      var pickedTow = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      if (pickedTow != null) {
                        file = File(pickedTow.path);
                        var rand = Random().nextInt(100000);
                        var imagename = "$rand" + basename(pickedTow.path);
                        ref = FirebaseStorage.instance
                            .ref()
                            .child("image/$imagename");
                        print('url : $url');
                        Navigator.of(context).pop();
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.camera,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "من الكاميرا",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          );
        });
  }

  showBottomSheetThre(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(20),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "من فضلك اختار الصورة",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () async {
                    var pickedThre = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (pickedThre != null) {
                      file = File(pickedThre.path);
                      var rand = Random().nextInt(100000);
                      var imagename = "$rand" + basename(pickedThre.path);
                      ref = FirebaseStorage.instance
                          .ref()
                          .child("image/$imagename");
                      print('url : $url');
                      Navigator.of(context).pop();
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.photo_outlined,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "من الاستوديو",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                ),
                InkWell(
                    onTap: () async {
                      var pickedThre = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      if (pickedThre != null) {
                        file = File(pickedThre.path);
                        var rand = Random().nextInt(100000);
                        var imagename = "$rand" + basename(pickedThre.path);
                        ref = FirebaseStorage.instance
                            .ref()
                            .child("image/$imagename");
                        print('url : $url');
                        Navigator.of(context).pop();
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.camera,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "من الكاميرا",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          );
        });
  }
}
