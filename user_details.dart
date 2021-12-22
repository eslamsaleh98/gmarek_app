import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gmarek_app/user.dart';

class UserDetails extends StatefulWidget {
  UserDetails(this.userModel, {Key? key}) : super(key: key);
  UserModel? userModel;
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  UserModel userModel = UserModel(
      celmoahel: '',
      celhaseb_elaly: '',
      celdaraga: '',
      celtasreh: '',
      cendemam: '',
      cgraduate_and_date_of_of_it: '',
      cid_botaka: '',
      celwaseka_photo: '',
      celden: '',
      cid_phpto: '',
      cid_location: '',
      cjob_in_past: '',
      cnational: '',
      cnickname_tow: '',
      cphone_home: '',
      cnumber_of_taamen: '',
      cjob: '',
      cnickname: '',
      cdate_eldaraga: '',
      caddress_in_past: '',
      caddress_now: '',
      caddress: '',
      cbirthdate: '',
      cdate_of_work: '',
      cetgahat: '',
      cname: '',
      cnotes: '',
      cphone: '',
      cprofile_photo: '',
      cq_a: '',
      cq_b: '',
      cq_c: '',
      cq_d: '',
      cq_e: '',
      cr_t_g_a_c: '',
      cr_t_g_a: '',
      cr_t_g_g: '',
      cr_t_g: '',
      csalary: '',
      cside_job: '',
      cside_of_botaka: '',
      cstatus_of_tagned: '',
      cstatus: '',
      ct_g: '',
      cworker_status: '',
      id: '');
  CollectionReference gdata = FirebaseFirestore.instance.collection("gdata");

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
      body: FutureBuilder(
          future: gdata.where("id").get(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Center(
                  child: Text(
                'حدث خطا اثناء جلب البيانات',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
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
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 5.0),
                        Column(
                          children: <Widget>[
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    //  Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    // builder: (_) => EditContact(
                                    //     contactKey: contact['key'],
                                    //   )));
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text('تعديل',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //  _showDeleteDialog(contact: contact);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red[700],
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text('حذف',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.red[700],
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'الصورة الشخصية',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )
                              ],
                            ),
                            Image.network(
                              data.docs[i]['profile_photo'],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'صورة البطاقة',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )
                              ],
                            ),
                            Image.network(
                              data.docs[i]['profile_photo'],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'وثيقة التعارف',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )
                              ],
                            ),
                            Image.network(
                              data.docs[i]['profile_photo'],
                              // 'https://th.bing.com/th/id/R.ac61c6da0e777c31ad86e6bd3dafabc5?rik=m22gjUNrQKVdaA&pid=ImgRaw&r=0'
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  "اسم الموظف ",
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
                                    '${data.docs[i]['name']}',
                                    maxLines: 3,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  "الرقم القومي",
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
                                    '${data.docs[i]['id_botaka']}',
                                    maxLines: 3,
                                    textDirection: TextDirection.ltr,
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
                              thickness: 2,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  "العنوان",
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
                                    '${data.docs[i]['address']}',
                                    maxLines: 3,
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  "رقم الهاتف",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                ),
                                Expanded(
                                  child: Text(
                                    '${data.docs[i]['phone']}',
                                    textDirection: TextDirection.ltr,
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
                              thickness: 2,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  "الوظيفة",
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
                                    '${data.docs[i]['job']}',
                                    textDirection: TextDirection.ltr,
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
                              thickness: 2,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  "تاريخ الميلاد",
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
                                    '${data.docs[i]['birthdate']}',
                                    textDirection: TextDirection.ltr,
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
                              thickness: 2,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  " البريد الالكتروني",
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
                                    'Email',
                                    textDirection: TextDirection.ltr,
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
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.lock,
                                  color: Theme.of(context).primaryColor,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Password",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  "ملاحظات ",
                                  textAlign: TextAlign.left,
                                  maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                ),
                                Expanded(
                                  child: Text(
                                    '${data.docs[i]['notes']}',
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.blue[700],
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "الحاسب الالي",
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
                                '${data.docs[i]['elhaseb_elaly']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "اسم الشهرة",
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
                                '${data.docs[i]['nickname']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "المسمي الوظيفي",
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
                                '${data.docs[i]['nickname_tow']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "صفة الموظف",
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
                                '${data.docs[i]['worker_status']}',
                                maxLines: 3,
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "الجنسية",
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
                                '${data.docs[i]['national']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "الحالة الاجتماعية",
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
                                '${data.docs[i]['status']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "الديانة",
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
                                '${data.docs[i]['elden']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "تليفون المنزل",
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
                                '${data.docs[i]['phone_home']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "جهة اصدار البطاقة",
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
                                '${data.docs[i]['side_of_botaka']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "الرقم التأميني",
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
                                '${data.docs[i]['number_of_taamen']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "المؤهل التعليمي",
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
                                '${data.docs[i]['elmoahel']}',
                                maxLines: 3,
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "الموقف من التجنيد",
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
                                '${data.docs[i]['status_of_tagned']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "تاريخ التعيين ",
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
                                '${data.docs[i]['date_of_work']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              " محل الاقامة السابق",
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
                                '${data.docs[i]['address_in_past']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              " محل الاقامة الحالي",
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
                                '${data.docs[i]['address_now']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              " تاريخ الحصول علي الدرجة",
                              maxLines: 3,
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
                                '${data.docs[i]['date_eldaraga']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "المؤهلات الدراسية وتاريخ الحصول عليها ",
                              maxLines: 2,
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
                                '${data.docs[i]['graduate_and_date_of_of_it']}',
                                maxLines: 100,
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "جهة العمل ",
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
                                '${data.docs[i]['side_job']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "الوظيفة السابقة ",
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
                                '${data.docs[i]['job_in_past']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "المرتب ",
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
                                '${data.docs[i]['salary']}',
                                textDirection: TextDirection.ltr,
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
                          thickness: 2,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "نوع التصريح ",
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
                                '${data.docs[i]['eltasreh']}',
                                textDirection: TextDirection.ltr,
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
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '  التحريات',
                          style: TextStyle(color: Colors.black),
                        ),
                        const Divider(thickness: 3),
                        const SizedBox(
                          height: 5,
                        ),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
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
                );
              },
            );
          }),
    );
  }
}
