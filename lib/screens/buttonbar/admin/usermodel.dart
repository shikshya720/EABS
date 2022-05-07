
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eabs/screens/buttonbar/home/userhome/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserModel {
  late String fullName;
  late String email;
  late String location;
  late num phonenumber;
  String uid;

  UserModel({
    required this.fullName,
    required this.email,
    required this.location,
    required this.phonenumber,
    required this.uid,
  });

  Map<String, dynamic> toJson() => {
    
      'Full Name':fullName,
      'Email':email,
      'Location':location,
      'Phone Number': phonenumber,
      'uid': uid,
    
  };

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
    fullName: json['fullname'], 
    email: json['email'],
     location: json['location'], 
     phonenumber: json['phonenumber'],
      uid:  json['uid'],
     );

  
 
}

class Ambulance{
  late String HospitalName;
  late String url;
  late String Location;
  late String ContactNumber;
  late String Signal;
  late String uid;
 


  Ambulance({
    required this.HospitalName,
    required this.url,
    required this.Location,
    required this.ContactNumber, location, 
    required String Signal,
    required String uid,
  
   
  });

  // Ambulance.fromSnapshot(DataSnapshot snapshot) :
   
  //   HospitalName = snapshot.value ["hospitalName"],
  //   Location = snapshot.value["location"],
  //   ContactNumber = snapshot.value["phonenumber"];

  // toJson() {
  //   return {
  //     "hospitalName": HospitalName,
  //     "location": Location,
  //     "phonenumber": ContactNumber,
  //   };
  // }

}

class UserManagement {
  storeNewUser(user, context) async {
    var firebaseUser = await FirebaseAuth.instance.currentUser!;
    FirebaseFirestore.instance
        .collection('User')
        .doc(firebaseUser.uid)
        .set({'email': user.email, 'uid': user.uid})
        .then((value) => Navigator.push(
            context, MaterialPageRoute(builder: (context) => profile())))
        .catchError((e) {
          print(e);
        });
  }
}
