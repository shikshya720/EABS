// // Future UserModel({required String fullName,
// //   required String email,
// //   required String location,
// //   required String phonenumber}) async {
// //     final docUser = FirebaseFirestore.instance.collection("User").doc();
// //     final user = UserModel (
// //       email: email,
// //       location: location,
// //       fullName: fullName,
// //       phonenumber:  phonenumber
// //     );

// //     final json = user.toJson();
// //     await docUser.set(json);
// //   }

  
// // }
// // class UserModel {
// //   late String fullName;
// //   late String email;
// //   late String location;
// //   late String phonenumber;

// //   UserModel({
// //     required this.fullName,
// //     required this.email,
// //     required this.location,
// //     required this.phonenumber,
// //   });

// //   Map<String, String> toJson() => {
    
// //       'Full Name':fullName,
// //       'Email':email,
// //       'Location':location,
// //       'Phone Number': phonenumber,
    
// //   };
// // }



// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import '../screens/user_product_list_view.dart';

// class UserDrawer extends StatefulWidget {
//   UserDrawer({Key? key}) : super(key: key);

//   @override
//   _UserDrawerState createState() => _UserDrawerState();
// }

// class _UserDrawerState extends State<UserDrawer> {
//   @override
//   void initState() {
//     super.initState();
//     getUser();
//   }

//   var currentUserLoginUser = FirebaseAuth.instance.currentUser;
//   Future getUser() async {
//     var currentUserLoginUser = await FirebaseAuth.instance.currentUser;
//     var firebaseUser = await FirebaseFirestore.instance
//         .collection('users')
//         .doc(currentUserLoginUser!.uid);
//     print(currentUserLoginUser.email);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Theme.of(context).primaryColor,
//           body: FutureBuilder<DocumentSnapshot>(
//             future: FirebaseFirestore.instance
//                 .collection('users')
//                 .doc(currentUserLoginUser!.uid)
//                 .get(),
//             builder: (BuildContext context,
//                 AsyncSnapshot<DocumentSnapshot> snapshot) {
//               if (snapshot.hasError) {
//                 return Text("Something went wrong");
//               }
//               if (snapshot.hasData && !snapshot.data!.exists) {
//                 return Text("Document does not exist");
//               }
//               if (snapshot.connectionState == ConnectionState.done) {
//                 Map<String, dynamic> data =
//                     snapshot.data!.data() as Map<String, dynamic>;
//                 return Stack(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.only(top: 600),
//                       decoration: BoxDecoration(
//                           color: Theme.of(context).primaryColorLight,
//                           borderRadius: BorderRadius.only(
//                               bottomRight: Radius.circular(80))),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           ElevatedButton(
//                               onPressed: () {
//                                FirebaseAuth.instance.signOut();
//                               },
//                               child: Text('Logout')),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 400),
//                       decoration: BoxDecoration(
//                           color: Theme.of(context).primaryColorLight,
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(80))),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Expanded(
//                               child: ElevatedButton(
//                                   onPressed: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                 UserProductList()));
//                                   },
//                                   child: Text('My Products'))),
//                           SizedBox(
//                             width: 08,
//                           ),
//                           Expanded(
//                               child: ElevatedButton(
//                                   onPressed: () {}, child: Text('data'))),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 105),
//                       height: 300,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: Theme.of(context).primaryColorDark,
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(120))),
//                       child: Column(
//                         children: [
//                           CircleAvatar(
//                             radius: 40,
//                             backgroundColor: Colors.blueAccent,
//                           ),
//                           Text(
//                             ' Name: ${data['username']} ',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 20),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                       height: 100,
//                       width: double.infinity,
//                       child: Text(
//                         'Profile',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                           color: Theme.of(context).primaryColorLight,
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(80))),
//                     ),
//                   ],
//                 );
//               }
//               return Text('Loading');
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }