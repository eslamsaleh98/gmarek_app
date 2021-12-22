import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gmarek_app/home_page.dart';

import '../my_flutter_app_icons.dart';

class EditList extends StatefulWidget {
  DocumentSnapshot docid;
  EditList({required this.docid});

  @override
  _EditListState createState() => _EditListState();
}

class _EditListState extends State<EditList> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController job = TextEditingController();
  // final id = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController side_of_botaka = TextEditingController();

  TextEditingController address_in_past = TextEditingController();
  TextEditingController address_now = TextEditingController();
  TextEditingController birthdate = TextEditingController();
  TextEditingController date_eldaraga = TextEditingController();
  TextEditingController date_of_work = TextEditingController();
  TextEditingController eldaraga = TextEditingController();
  TextEditingController elden = TextEditingController();
  TextEditingController elhaseb_elaly = TextEditingController();
  TextEditingController elmoahel = TextEditingController();
  TextEditingController elwaseka_photo = TextEditingController();
  TextEditingController graduate_and_date_of_of_it = TextEditingController();
  TextEditingController id_botaka = TextEditingController();
  TextEditingController id_location = TextEditingController();
  TextEditingController id_phpto = TextEditingController();
  TextEditingController job_in_past = TextEditingController();
  TextEditingController national = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController nickname_tow = TextEditingController();
  TextEditingController notes = TextEditingController();
  TextEditingController number_of_taamen = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController phone_home = TextEditingController();
  TextEditingController profile_photo = TextEditingController();
  TextEditingController salary = TextEditingController();
  TextEditingController side_job = TextEditingController();
  TextEditingController status = TextEditingController();
  TextEditingController eltasreh = TextEditingController();
  TextEditingController t_g = TextEditingController();
  TextEditingController r_t_g = TextEditingController();
  TextEditingController r_t_g_a = TextEditingController();
  TextEditingController r_t_g_a_c = TextEditingController();
  TextEditingController r_t_g_g = TextEditingController();
  TextEditingController etgahat = TextEditingController();
  TextEditingController endemam = TextEditingController();
  TextEditingController q_a = TextEditingController();
  TextEditingController q_b = TextEditingController();
  TextEditingController q_c = TextEditingController();
  TextEditingController q_e = TextEditingController();
  TextEditingController q_d = TextEditingController();

  TextEditingController status_of_tagned = TextEditingController();
  TextEditingController worker_status = TextEditingController();
  // final address = TextEditingController();
  // final address = TextEditingController();
  @override
  void initState() {
    name = TextEditingController(text: widget.docid.get('name'));
    nickname = TextEditingController(text: widget.docid.get('nickname'));

    job = TextEditingController(text: widget.docid.get('job'));
    address = TextEditingController(text: widget.docid.get('address'));
    side_of_botaka =
        TextEditingController(text: widget.docid.get('side_of_botaka'));
    address_in_past =
        TextEditingController(text: widget.docid.get('address_in_past'));
    address_now = TextEditingController(text: widget.docid.get('address_now'));
    birthdate = TextEditingController(text: widget.docid.get('birthdate'));
    date_eldaraga =
        TextEditingController(text: widget.docid.get('date_eldaraga'));
    date_of_work =
        TextEditingController(text: widget.docid.get('date_of_work'));
    eldaraga = TextEditingController(text: widget.docid.get('eldaraga'));
    elden = TextEditingController(text: widget.docid.get('elden'));
    elhaseb_elaly =
        TextEditingController(text: widget.docid.get('elhaseb_elaly'));
    elmoahel = TextEditingController(text: widget.docid.get('elmoahel'));
    elwaseka_photo =
        TextEditingController(text: widget.docid.get('elwaseka_photo'));
    graduate_and_date_of_of_it = TextEditingController(
        text: widget.docid.get('graduate_and_date_of_of_it'));
    id_botaka = TextEditingController(text: widget.docid.get('id_botaka'));
    id_location = TextEditingController(text: widget.docid.get('id_location'));
    id_phpto = TextEditingController(text: widget.docid.get('id_phpto'));
    job_in_past = TextEditingController(text: widget.docid.get('job_in_past'));
    nickname_tow =
        TextEditingController(text: widget.docid.get('nickname_tow'));
    notes = TextEditingController(text: widget.docid.get('notes'));
    number_of_taamen =
        TextEditingController(text: widget.docid.get('number_of_taamen'));
    phone = TextEditingController(text: widget.docid.get('phone'));
    phone_home = TextEditingController(text: widget.docid.get('phone_home'));
    profile_photo =
        TextEditingController(text: widget.docid.get('profile_photo'));
    salary = TextEditingController(text: widget.docid.get('salary'));
    side_job = TextEditingController(text: widget.docid.get('side_job'));
    status = TextEditingController(text: widget.docid.get('status'));
    eltasreh = TextEditingController(text: widget.docid.get('eltasreh'));
    t_g = TextEditingController(text: widget.docid.get('t_g'));
    r_t_g = TextEditingController(text: widget.docid.get('r_t_g'));
    r_t_g_a = TextEditingController(text: widget.docid.get('r_t_g_a'));
    r_t_g_a_c = TextEditingController(text: widget.docid.get('r_t_g_a_c'));
    r_t_g_g = TextEditingController(text: widget.docid.get('r_t_g_g'));
    etgahat = TextEditingController(text: widget.docid.get('etgahat'));
    endemam = TextEditingController(text: widget.docid.get('endemam'));
    q_a = TextEditingController(text: widget.docid.get('q_a'));
    q_b = TextEditingController(text: widget.docid.get('q_b'));
    q_c = TextEditingController(text: widget.docid.get('q_c'));
    q_e = TextEditingController(text: widget.docid.get('q_e'));
    q_d = TextEditingController(text: widget.docid.get('q_d'));
    status_of_tagned =
        TextEditingController(text: widget.docid.get('status_of_tagned'));
    worker_status =
        TextEditingController(text: widget.docid.get('worker_status'));
    national = TextEditingController(text: widget.docid.get('national'));

    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('تعديل موظف'),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: gdata,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
              // itemCount: snapshot.data.docs.,
              // key: UniqueKey(),
              itemBuilder: (context, i) {
                return Expanded(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              // showBottomSheet(context);
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
                              // showBottomSheetTow(context);
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
                              //   showBottomSheetThre(context);
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
                        // onSaved: (String? value) {
                        //   cname = name.text;
                        //   // data.docs[i]['name'];
                        // },
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
                        // onChanged: (String? value) {
                        //   cname = name.text;
                        // },
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        controller: phone,
                        // onSaved: (String? value) {
                        //   cphone = phone.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   cphone = phone.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ////////////////////////////////////////////////////////////////////////////////////////////////////
                      TextFormField(
                        controller: address,
                        // onSaved: (String? value) {
                        //   caddress = address.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   caddress = address.text;
                        // },
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: id_botaka,
                        // onSaved: (String? value) {
                        //   cid_botaka = id_botaka.text;
                        // },
                        // onChanged: (String? value) {
                        //   cid_botaka = id_botaka.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cjob = job.text;
                        // },
                        // onChanged: (String? value) {
                        //   cjob = job.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cbirthdate = birthdate.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   cbirthdate = birthdate.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: notes,
                        // onSaved: (String? value) {
                        //   cnotes = notes.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   cnotes = notes.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: elhaseb_elaly,
                        // onSaved: (String? value) {
                        //   celhaseb_elaly = elhaseb_elaly.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   celhaseb_elaly = elhaseb_elaly.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: nickname,
                        // onSaved: (String? value) {
                        //   cnickname = nickname.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   cnickname = nickname.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: nickname_tow,
                        // onSaved: (String? value) {
                        //   cnickname_tow = nickname_tow.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   cnickname_tow = nickname_tow.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: worker_status,
                        // onSaved: (String? value) {
                        //   cworker_status = worker_status.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   cworker_status = worker_status.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: national,
                        // onSaved: (String? value) {
                        //   cnational = national.text;
                        // },
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
                        // onChanged: (String? value) {
                        //   cnational = national.text;
                        // },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: status,
                        // onSaved: (String? value) {
                        //   cstatus = status.text;
                        // },
                        // onChanged: (String? value) {
                        //   cstatus = status.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   celden = elden.text;
                        // },
                        // onChanged: (String? value) {
                        //   celden = elden.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cphone_home = phone_home.text;
                        // },
                        // onChanged: (String? value) {
                        //   cphone_home = phone_home.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cside_of_botaka = side_of_botaka.text;
                        // },
                        // onChanged: (String? value) {
                        //   cside_of_botaka = side_of_botaka.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cnumber_of_taamen = number_of_taamen.text;
                        // },
                        // onChanged: (String? value) {
                        //   cnumber_of_taamen = number_of_taamen.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   celmoahel = elmoahel.text;
                        // },
                        // onChanged: (String? value) {
                        //   celmoahel = elmoahel.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cstatus_of_tagned = status_of_tagned.text;
                        // },
                        // onChanged: (String? value) {
                        //   cstatus_of_tagned = status_of_tagned.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cdate_of_work = date_of_work.text;
                        // },
                        // onChanged: (String? value) {
                        //   cdate_of_work = date_of_work.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   caddress_in_past = address_in_past.text;
                        // },
                        // onChanged: (String? value) {
                        //   caddress_in_past = address_in_past.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   caddress_now = address_now.text;
                        // },
                        // onChanged: (String? value) {
                        //   caddress_now = address_now.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   celdaraga = eldaraga.text;
                        // },
                        // onChanged: (String? value) {
                        //   celdaraga = eldaraga.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cdate_eldaraga = date_eldaraga.text;
                        // },
                        // onChanged: (String? value) {
                        //   cdate_eldaraga = date_eldaraga.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cgraduate_and_date_of_of_it =
                        //       graduate_and_date_of_of_it.text;
                        // },
                        // onChanged: (String? value) {
                        //   cgraduate_and_date_of_of_it =
                        //       graduate_and_date_of_of_it.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cside_job = side_job.text;
                        // },
                        // onChanged: (String? value) {
                        //   cside_job = side_job.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cjob_in_past = job_in_past.text;
                        // },
                        // onChanged: (String? value) {
                        //   cjob_in_past = job_in_past.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   csalary = salary.text;
                        // },
                        // onChanged: (String? value) {
                        //   csalary = salary.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   celtasreh = eltasreh.text;
                        // },
                        // onChanged: (String? value) {
                        //   celtasreh = eltasreh.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   ct_g = t_g.text;
                        // },
                        // onChanged: (String? value) {
                        //   ct_g = t_g.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cr_t_g = r_t_g.text;
                        // },
                        // onChanged: (String? value) {
                        //   cr_t_g = r_t_g.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cr_t_g_a = r_t_g_a.text;
                        // },
                        // onChanged: (String? value) {
                        //   cr_t_g_a = r_t_g_a.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cr_t_g_a_c = r_t_g_a_c.text;
                        // },
                        // onChanged: (String? value) {
                        //   cr_t_g_a_c = r_t_g_a_c.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cr_t_g_g = r_t_g_g.text;
                        // },
                        // onChanged: (String? value) {
                        //   cr_t_g_g = r_t_g_g.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cetgahat = etgahat.text;
                        // },
                        // onChanged: (String? value) {
                        //   cetgahat = etgahat.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cendemam = endemam.text;
                        // },
                        // onChanged: (String? value) {
                        //   cendemam = endemam.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cq_a = q_a.text;
                        // },
                        // onChanged: (String? value) {
                        //   cq_a = q_a.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cq_b = q_b.text;
                        // },
                        // onChanged: (String? value) {
                        //   cq_b = q_b.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cq_c = q_c.text;
                        // },
                        // onChanged: (String? value) {
                        //   cq_c = q_c.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cq_d = q_d.text;
                        // },
                        // onChanged: (String? value) {
                        //   cq_d = q_d.text;
                        // },
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
                        // onSaved: (String? value) {
                        //   cq_e = q_e.text;
                        // },
                        // onChanged: (String? value) {
                        //   cq_e = q_e.text;
                        // },
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
                                //  showBottomSheet(context);
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
                                //   showBottomSheet(context);
                              },
                              child: const Text(
                                  'رفع صورة اخري في حالة اتهام احد من الاقارب')),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () async {
                                widget.docid.reference.update({
                                  'name ': name.text,
                                  'nickname': nickname.text,
                                  'job ': job.text,
                                  'address ': address.text,
                                  'side_of_botaka ': side_of_botaka.text,
                                  'address_in_past ': address_in_past.text,
                                  'address_now ': address_now.text,
                                  'birthdate ': birthdate.text,
                                  'date_eldaraga ': date_eldaraga.text,
                                  'date_of_work ': date_of_work.text,
                                  'eldaraga ': eldaraga.text,
                                  'elden ': elden.text,
                                  'elhaseb_elaly ': elhaseb_elaly.text,
                                  'elmoahel ': elmoahel.text,
                                  'elwaseka_photo ': elwaseka_photo.text,
                                  'graduate_and_date_of_of_it ':
                                      graduate_and_date_of_of_it.text,
                                  'id_botaka ': id_botaka.text,
                                  'id_location ': id_location.text,
                                  'id_phpto ': id_phpto.text,
                                  'job_in_past ': job_in_past.text,
                                  'national ': national.text,
                                  'nickname_tow ': nickname_tow.text,
                                  'notes ': notes.text,
                                  'number_of_taamen ': number_of_taamen.text,
                                  'phone ': phone.text,
                                  'phone_home ': phone_home.text,
                                  'profile_photo ': profile_photo.text,
                                  'salary ': salary.text,
                                  'side_job ': side_job.text,
                                  'q_d ': q_d.text,
                                  'status ': status.text,
                                  'eltasreh ': eltasreh.text,
                                  't_g ': t_g.text,
                                  'r_t_g ': r_t_g.text,
                                  'r_t_g_a ': r_t_g_a.text,
                                  'r_t_g_a_c ': r_t_g_a_c.text,
                                  'r_t_g_g ': r_t_g_g.text,
                                  'etgahat ': etgahat.text,
                                  'endemam ': endemam.text,
                                  'q_a ': q_a.text,
                                  'q_b ': q_b.text,
                                  'q_c ': q_c.text,
                                  'q_e ': q_e.text,
                                  'status_of_tagned ': status_of_tagned.text,
                                  'worker_status ': worker_status.text,
                                }).whenComplete(() {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => HomePage()));
                                });
                              },
                              child: const Text(' حفظ التعديلات')),
                        ],
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
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}
