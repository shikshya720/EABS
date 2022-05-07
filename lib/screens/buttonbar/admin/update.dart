import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eabs/screens/buttonbar/admin/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class update extends StatefulWidget {


  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update>{
    final fb = FirebaseDatabase.instance;
  final FirebaseAuth _auth=FirebaseAuth.instance;
  
  final formkey = GlobalKey<FormState>();
   late DatabaseReference user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = FirebaseDatabase.instance.ref("Ambulance");
  }

  List todos = List.empty();
  late String hospitalName = "";

  late String location = "";
   late String phonenumber = "";
 

  createToDo() {
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("Ambulance").doc(hospitalName);

    Map<String, String> ambulance = {
      "hospitalName": hospitalName,
      "location": location,
      "phonenumber": phonenumber,
    };

    documentReference
        .set(ambulance)
        .whenComplete(() => print("Data stored successfully"));
  }

  deleteTodo(hospitalName) {

    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("Ambulance").doc(hospitalName);

        documentReference.delete().whenComplete(() => print("deleted successfully"));
  }

  @override
  Widget build(BuildContext context) {
    final ref = fb.ref("Ambulance");
    return Scaffold(
      appBar: AppBar(
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Ambulance").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          } else if (snapshot.hasData || snapshot.data != null) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  QueryDocumentSnapshot<Object?>? documentSnapshot =
                      snapshot.data?.docs[index];
                  return Dismissible(
                      key: Key(index.toString()),
                      child: Card(
                        elevation: 4,
                        child: ListTile(
                          horizontalTitleGap: 40,
                          minVerticalPadding: 15,
                          
                          leading: CircleAvatar(
                            radius: 32,
                           backgroundImage: NetworkImage("https://www.hamrodoctor.com/img/default_ambulance.png"),
                            backgroundColor: Colors.white,
                          ),
                          
                          // title: Text((documentSnapshot != null) ? (documentSnapshot["hospitalName"]) : ""),
                          // subtitle: Text((documentSnapshot != null)? ((documentSnapshot["location"] != null)? documentSnapshot["location"]: ""): "" 
                          // + "\n" + ((documentSnapshot["phonenumber"] != null)? documentSnapshot["phonenumber"]: ""): "" ),
                          title: Padding(
                            padding: EdgeInsets.only(bottom:5),
                          child: Text(documentSnapshot!['hospitalName'], textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
                          ),
                      subtitle:Padding(
                            padding: EdgeInsets.only(bottom:5), 
                            child: Text( documentSnapshot['location'] +"\n" +  documentSnapshot['phonenumber'],
                            style: TextStyle(color: Colors.black, fontSize: 15),  ),),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                //todos.removeAt(index);
                                deleteTodo((documentSnapshot != null) ? (documentSnapshot["hospitalName"]) : "");
                              });
                            },
                          ),
                        ),
                      ));
                });
          }
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Text("Add information"),
                  content: Container(
                    width: 400,
                    height: 200,
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Hospital Name"
                          ),
                          onChanged: (String value) {
                            hospitalName = value;
                          },
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Location"
                          ),
                          onChanged: (String value) {
                            location = value;
                          },
                        ),SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Phone Number"
                          ),
                          onChanged: (String value) {
                            phonenumber = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          setState(() {
                            //todos.add(title);
                            createToDo();
                            Map<String,String> user = {
                                 "Hospital Name": hospitalName,
                                 "Location": location,
                                 "ContactNumber": phonenumber,
                      } ;
                      Ambulance(HospitalName : hospitalName,  Location: location, ContactNumber: phonenumber, url: '', Signal: '', uid: '');
                      ref.push().set(user); 
                          });
                          Navigator.of(context).pop();
                        },
                        child: const Text("Add"))
                  ],
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}