import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eabs/screens/buttonbar/admin/detailspatient.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';


class details extends StatefulWidget {
  const details({ Key? key, required String Data}) : super(key: key);
  

  @override
  State<details> createState() => _detailsState();
  
}

class _detailsState extends State<details> {
final dbref = FirebaseDatabase.instance.ref();
 final ref = FirebaseDatabase.instance.ref().child("User").child('/User/-N1PtERfIi6S_BqPPFaX');

  late final String Data;
  bool _flag = true;


  @override
  
  Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.red,
     ),
     body:  StreamBuilder(
       stream:  FirebaseFirestore.instance.collection("User").snapshots(),
       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
         if (!snapshot.hasData){
           return CircularProgressIndicator();
         }
        return ListView(
          
             children: snapshot.data!.docs.map((document){
               return Card(
                 
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Container(
                     child: ListTile( 
                      title: Text(document['name'], textAlign: TextAlign.left ),
                      subtitle: Text(document['email'] +"\n" + document['location'] +"\n" + document['phonenumber']),
                      
                      trailing: Row(
                         mainAxisSize: MainAxisSize.min,
                        children: [  
                          OutlinedButton(
                            onPressed: () => setState(() => showDialog(
                              context: context, 
                              builder: (BuildContext context) {
                                return details(Data: Data);
                              }
                              )),
                            child: Text(_flag? "Approved":"Approved",),
                            style: OutlinedButton.styleFrom(
                              primary: _flag? Colors.red : Colors.green,
                            ),

                          ),

                          OutlineButton(onPressed: ()=> Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => detailspatient()),
                ),
                          child: Text(_flag? "Details":"Details",),
                          )
                        ],
                      ),
                      
                      
                     ),
                     
                   ),
                 ),
               );

             }).toList(),
            
        );
         }
         
       
     ),
    );
  
