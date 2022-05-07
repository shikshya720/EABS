
import 'package:eabs/screens/buttonbar/admin/loginadmin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'admin.dart';
import 'update.dart';
import 'userdetails.dart';

class adminhome extends StatefulWidget {
  const adminhome({ Key? key }) : super(key: key);

  @override
  State<adminhome> createState() => _adminhomeState();
}


final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
_signOut() async {
  await _firebaseAuth.signOut();
}


class _adminhomeState extends State<adminhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,size: 30,),
          onPressed: () => Navigator.pop(
    context,
    MaterialPageRoute(builder: (context) => const loginadmin()),
  ),
        ),
      ),
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
                    child: Text('User Details'),
                  ),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  details(Data: '',))
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
                    child: Text('Update Ambulance List', textAlign: TextAlign.center,),
                  ),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  update())
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
                        MaterialPageRoute(builder: (context) => loginadmin()),
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