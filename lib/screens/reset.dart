import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../constant.dart';


class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  String email='';
  final auth = FirebaseAuth.instance;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(title: Text('Reset Password'),),
      body: Column(
        children: [
          SizedBox(height: 40),
          TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                email = value.toString().trim();
                              },
                              validator: (value) => (value!.isEmpty)
                                  ? ' Please enter email'
                                  : null,
                              textAlign: TextAlign.center,
                              decoration: kTextFieldDecoration.copyWith(
                                hintText: 'Enter Your Email',
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                child: Text('Send Request'),
                onPressed: () {
                  auth.sendPasswordResetEmail(email: email);
                  Navigator.of(context).pop();
                  setState(() {
                                      isloading = false;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: Colors.redAccent,
                                        content: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              'Sucessfully Send Request.Check Mail'),
                                        ),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                    setState(() {
                                    isloading = false;
                                  });
                },
                
                
                color: Theme.of(context).accentColor,
              ),

            ],
          ),

        ],),
    );
  }
}