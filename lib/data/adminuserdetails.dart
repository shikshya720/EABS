
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:eabs/screens/buttonbar/admin/usermodel.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class details extends StatefulWidget {
//   const details({ Key? key }) : super(key: key);
  

//   @override
//   State<details> createState() => _detailsState();
  
// }

// class _detailsState extends State<details> {


//   @override
  
//   Widget build(BuildContext context) => Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.red,
//      ),
//      body:  StreamBuilder<List<UserModel>>(
//        stream: readUsers(),
//        builder: (context, snapshot){
//          if (snapshot.hasData){
//            final users = snapshot.data!;

//            return ListView(
//              children: users.map(buildUser).toList(),
            
//            );
//          }
//          else {
//            return const Center(child: CircularProgressIndicator());
//          }
//        },
//      ),
//     );
  
//   Widget buildUser (User user) => ListTile(
//     leading: CircleAvatar(child: Text("${user.email}")),
//   );

//   Stream<List<UserModel>> readUsers() => FirebaseFirestore.instance
//   .collection("User")
//   .snapshots()
//   .map((snapshot) => 
//   snapshot.docs.map((doc) => UserModel.fromJson(doc.data())).toList());
//   Future createUser({ required String name}) async{
//     final docUser =  FirebaseFirestore.instance.collection("User");
//   }



  
// }