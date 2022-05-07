import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
 String? email;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body: Center(
        child: FutureBuilder(
          future: _fetch(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return Text("Loading data...Please wait");
            }
            return Text("Email : $email");
          },
        ),
      ),
    );
  }

  _fetch() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser!;
    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('User')
          .doc(firebaseUser.uid)
          .get()
          .then((ds) {
        email = ds.data()!['email'] ;
        print(email);
      }).catchError((e) {
        print(e);
      });
    }
     
     
    
      
  }
}