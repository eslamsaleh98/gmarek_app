// class GmarekData {
//   List<User> data;
//   //List data;

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String cname;
  String cnickname;
  String cnickname_tow;
  String celhaseb_elaly;
  String cid_botaka;
  String cnational;
  String cid_location;
  String celden;
  String cstatus;
  String cbirthdate;
  String cphone_home;
  String cnumber_of_taamen;
  String celmoahel;
  String cstatus_of_tagned;
  String cdate_of_work;
  String cphone;
  String caddress;
  String caddress_in_past;
  String caddress_now;
  String celdaraga;
  String cdate_eldaraga;
  String cgraduate_and_date_of_of_it;
  String cjob;
  String cjob_in_past;
  String csalary;
  String cside_job;
  String cworker_status;
  String cnotes;
  String cid_phpto;
  String cprofile_photo;
  String celwaseka_photo;

  String cside_of_botaka;

  String celtasreh;
  String ct_g;
  String cr_t_g;
  String cr_t_g_a;
  String cr_t_g_a_c;
  String cr_t_g_g;
  String cetgahat;
  String cendemam;
  String cq_a;
  String cq_b;
  String cq_c;
  String cq_e;
  String cq_d;
  UserModel(
      {required this.id,
      required this.caddress,
      required this.caddress_in_past,
      required this.caddress_now,
      required this.cbirthdate,
      required this.cdate_eldaraga,
      required this.cdate_of_work,
      required this.celdaraga,
      required this.celden,
      required this.celhaseb_elaly,
      required this.celmoahel,
      required this.celwaseka_photo,
      required this.cgraduate_and_date_of_of_it,
      required this.cid_botaka,
      required this.cid_location,
      required this.cid_phpto,
      required this.cjob,
      required this.cjob_in_past,
      required this.cname,
      required this.cnational,
      required this.cnickname,
      required this.cnickname_tow,
      required this.cnotes,
      required this.cnumber_of_taamen,
      required this.cphone,
      required this.cphone_home,
      required this.cprofile_photo,
      required this.csalary,
      required this.cside_job,
      required this.cstatus,
      required this.celtasreh,
      required this.cendemam,
      required this.cetgahat,
      required this.cq_a,
      required this.cq_b,
      required this.cq_c,
      required this.cq_d,
      required this.cq_e,
      required this.cr_t_g,
      required this.cr_t_g_a,
      required this.cr_t_g_a_c,
      required this.cr_t_g_g,
      required this.cside_of_botaka,
      required this.cstatus_of_tagned,
      required this.ct_g,
      required this.cworker_status});

  Map<String, dynamic> toMap() {
    return {
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
  }
}







  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'address': address,
  //       'address_in_past': address_in_past,
  //       'address_now': address_now,
  //       'birthdate': birthdate,
  //       'date_eldaraga': date_eldaraga,
  //       'date_of_work': date_of_work,
  //       'eldaraga': eldaraga,
  //       'elden': elden,
  //       'elhaseb_elaly': elhaseb_elaly,
  //       'elmoahel': elmoahel,
  //       'elwaseka_photo': elwaseka_photo,
  //       'graduate_and_date_of_of_it': graduate_and_date_of_of_it,
  //       'id_botaka': id_botaka,
  //       'id_location': id_location,
  //       'id_phpto': id_phpto,
  //       'job': job,
  //       'job_in_past': job_in_past,
  //       'name': name,
  //       'national': national,
  //       'nickname': nickname,
  //       'nickname_tow': nickname_tow,
  //       'notes': notes,
  //       'number_of_taamen': number_of_taamen,
  //       'phone': phone,
  //       'phone_home': phone_home,
  //       'profile_photo': profile_photo,
  //       'salary': salary,
  //       'side_job': side_job,
  //       'status': status,
  //       'status_of_tagned': status_of_tagned,
  //       'worker_status': worker_status
  //     };

//   factory User.fromDocument(DocumentSnapshot doc) {
//     return User(
//         id: doc['id'],
//         name: doc['name'],
//         nickname: doc['nickname'],
//         address_in_past: '',
//         address_now: '',
//         address: '',
//         date_eldaraga: '',
//         date_of_work: '',
//         birthdate: '',
//         eldaraga: '',
//         elden: '',
//         elhaseb_elaly: '',
//         elmoahel: '',
//         elwaseka_photo: '',
//         graduate_and_date_of_of_it: '',
//         id_botaka: '',
//         id_location: '',
//         id_phpto: '',
//         job: '',
//         job_in_past: '',
//         national: '',
//         nickname_tow: '',
//         notes: '',
//         number_of_taamen: '',
//         phone_home: '',
//         phone: '',
//         profile_photo: '',
//         salary: '',
//         side_job: '',
//         status_of_tagned: '',
//         status: '',
//         worker_status: '');
//     //  displayName: doc['displayName'],
//     //  photoUrl: doc['photoUrl'],
//     // bio: doc['bio']);
//   }
// }

