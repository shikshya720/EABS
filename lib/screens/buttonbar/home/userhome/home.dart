
import 'package:eabs/screens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'profile.dart';
import 'viewlist.dart';
import '../../../login.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({ Key? key }) : super(key: key);
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
_signOut() async {
  await _firebaseAuth.signOut();
}

  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 60,
              width: 150,
              child: ElevatedButton(
                  clipBehavior: Clip.hardEdge,
                  child: Center(
                    child: Text('View List'),
                  ),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  viewlist())
                    );
                  }),
            ),
            SizedBox(height: 50),

            Container(
              height: 60,
              width: 150,
              child: ElevatedButton(
                  clipBehavior: Clip.hardEdge,
                  child: Center(
                    child: Text('Profile'),
                  ),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  profile())
                    );
                  }),
                    
                  ),
            
            SizedBox(height: 50),

            Container(
              height: 60,
              width: 150,
              child: ElevatedButton(
                  clipBehavior: Clip.hardEdge,
                  child: Center(
                    child: Text('Log out'),
                  ),
                  onPressed: () async {
                    await _signOut();
                    if (_firebaseAuth.currentUser == null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }
                  }),
                  

            )
          ],
        ),
      ),
    );
  }
}





