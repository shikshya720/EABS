
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../components/button.dart';
import '../constant.dart';




class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  
  String email = '';
  String password = '';
  String name = '';
  String phonenumber='';
  String location ='';
  bool isloading = false;
     bool _showPassword = true;
  


  final fb = FirebaseDatabase.instance;
  final FirebaseAuth _auth=FirebaseAuth.instance;
  
  final formkey = GlobalKey<FormState>();
   late DatabaseReference user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = FirebaseDatabase.instance.ref("User");
  }


  @override
  Widget build(BuildContext context) {
    final ref = fb.ref().child("User");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 30,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : 
          Form(
              key: formkey,
              child: AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle.light,
                child: Stack(
                  
                  children: [
                    
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                     color: Colors.white,
                     
                      child: SingleChildScrollView(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            Hero(
                              tag: '1',
                               child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 30),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              onChanged: (value) {
                                name = value.toString().trim();
                                name = value;
                                
                              },
                              validator: (value) => (value!.isEmpty)
                                  ? ' Please enter name'
                                  : null,
                              textAlign: TextAlign.center,
                              decoration: kTextFieldDecoration.copyWith(
                                hintText: 'Enter Your Name',
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                phonenumber = value.toString().trim();
                                phonenumber = value;
                                
                              },
                              validator: (value) => (value!.isEmpty)
                                  ? ' Please enter Your Phone Number'
                                  : null,
                              textAlign: TextAlign.center,
                              decoration: kTextFieldDecoration.copyWith(
                                hintText: 'Enter Phone Number',
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              onChanged: (value) {
                                location = value.toString().trim();
                                location = value;

                              },
                              validator: (value) => (value!.isEmpty)
                                  ? ' Please enter Location'
                                  : null,
                              textAlign: TextAlign.center,
                              decoration: kTextFieldDecoration.copyWith(
                                hintText: 'Enter location',
                                prefixIcon: Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),

                            
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                email = value.toString().trim();
                                email = value;

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
                            TextFormField(
                              
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter Password";
                                }
                              },
                              onChanged: (value) {
                                password = value;
                              },
                              textAlign: TextAlign.center,
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Choose a Password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.red,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                    child: Icon(
                        _showPassword ? Icons.visibility_off : Icons.visibility,
                                ),
                                )
                                  ),
                                  obscureText:_showPassword ,
                            ),
                            SizedBox(height: 80),


                            LoginSignupButton(
                              title: 'Register',
                               
                              
                              ontapp: () async {

                               Map<String,String> user = {
                                 "Name": name,
                                 "Location": location,
                                 "Phonenumber": phonenumber,
                                 "Email": email,

                      } ;
                      UserModel(fullName : name, email: email, location: location, phonenumber: phonenumber);
                      ref.push().set(user); 
                                
                                if (formkey.currentState!.validate()) {
                                  setState(() {
                                    isloading = true;
                                  });
                                  try {
                                       await _auth
                                    .createUserWithEmailAndPassword(email: email, password: password);       
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: Colors.redAccent,
                                        content: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              'Sucessfully Register.You Can Login Now'),
                                        ),
                                        duration: Duration(seconds: 5),
                                      ),
                                    );
                                    Navigator.of(context).pop();

                                    setState(() {
                                      isloading = false;
                                    });
                                  } on FirebaseAuthException catch (e) {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title:
                                            Text(' Ops! Registration Failed'),
                                        content: Text('${e.message}'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(ctx).pop();
                                            },
                                            child: Text('Okay'),
                                          )
                                        ],
                                      ),
                                    );
                                  }
                                  setState(() {
                                    isloading = false;
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
            ),
            
    );
    
  }

  Future UserModel({required String fullName,
  required String email,
  required String location,
  required String phonenumber}) async {
    final docUser = FirebaseFirestore.instance.collection("User").doc();
    final json = {
      'email': email,
      "location": location,
      "name": fullName,
      "phonenumber":  phonenumber 

    };
    await docUser.set(json);
  }
}

