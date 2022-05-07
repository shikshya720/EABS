

// // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // import 'package:dropdown_search/dropdown_search.dart';
// // // // import 'package:flutter/material.dart';

// // // // class viewlist extends StatefulWidget {
// // // //   const viewlist({ Key? key }) : super(key: key);

// // // //   @override
// // // //   State<viewlist> createState() => _viewlistState();
// // // // }

// // // // class _viewlistState extends State<viewlist> {

// // // //   List<Note> _note = List<Note>();
// // // //   List<Note> _notesforDisplay = List<Note>();

// // // //   Future<List<Note>> fecthNotes() async {

// // // //     var notes = List<Note>();

// // // //     if(response.statusCode ==) 
// // // //   }


// // // //   @override
// // // //   void initState() {
// // // //     fetchNotes().then((value){
// // // //       setState(() {
// // // //         _note.addAll(value);
// // // //       });
// // // //     });
    
// // // //     // TODO: implement initState
// // // //     super.initState();
// // // //   }



// // // //   @override
// // // //   Widget build(BuildContext context) {
    
// // // //     return Scaffold(
// // // //       appBar: AppBar(),
      
// // // //       body:  ListView.builder(
// // // //          scrollDirection: Axis.vertical,
// // // //           shrinkWrap: true,
          
// // // //         itemBuilder:(context, index) {
// // // //           return index==0 ? searchbar(): listitem(index-1);
// // // //         },
        
// // // //          )
      
// // // //     );
// // // //   }
// // // // }

// // // // searchbar(){
// // // //   return Padding(
// // // //     padding: EdgeInsets.all(8.0),
// // // //     child: TextField(
// // // //       decoration: InputDecoration(
// // // //         hintText: 'search...'
// // // //       ),
// // // //       onChanged: (text){
// // // //         text = text.toLowerCase();
// // // //         setState((){
// // // //           _note = _note.where((location)
// // // //           {
// // // //             var _location = location.title.toLower();
// // // //             return _location.contains(text);
// // // //           }).toList(); 

// // // //         });
        
// // // //       },
// // // //     ),
// // // //   );
// // // // }


 
// // // //  listitem (index){
// // // //    StreamBuilder(
// // // //        stream:  FirebaseFirestore.instance.collection("Ambulance").snapshots(),
// // // //        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
// // // //          if (!snapshot.hasData){
// // // //            return CircularProgressIndicator();
// // // //          }
// // // //         return ListView(
          
// // // //              children: snapshot.data!.docs.map((document){
// // // //                return Card(
                 
// // // //                  child: Padding(
// // // //                    padding: const EdgeInsets.all(12.0),
// // // //                    child: Container(
// // // //                      child: ListTile( 
// // // //                        horizontalTitleGap: 40,
// // // //                           minVerticalPadding: 15,
                          
// // // //                           leading: CircleAvatar(
// // // //                             radius: 32,
// // // //                            backgroundImage: NetworkImage("https://www.hamrodoctor.com/img/default_ambulance.png"),
// // // //                             backgroundColor: Colors.white,
// // // //                           ),
// // // //                       title: Text(document['hospitalName'], textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
// // // //                       subtitle: Text( document['location'],
// // // //                             style: TextStyle(color: Colors.black, fontSize: 15),),
                      
// // // //                      ),
// // // //                    ),
// // // //                  ),
// // // //                );
               

// // // //              }
// // // //              ).toList(), 
// // // //         );
        
// // // //          });
// // // //  }





// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:flutter/material.dart';

// // // class viewlist extends StatefulWidget {
// // //   const viewlist({ Key? key }) : super(key: key);

// // //   @override
// // //   State<viewlist> createState() => _viewlistState();
// // // }
// // // final fieldText = TextEditingController();
// // //   void cleartext(){
// // //     fieldText.clear();
// // //   }

// // // class _viewlistState extends State<viewlist> {
// // //    late String districtlistsearch;
// // //   final FocusNode _textFocusNode = FocusNode();
// // //   final TextEditingController _textEditingController = new TextEditingController();
// // //   @override
// // //   void dispose() {
// // //     _textFocusNode.dispose();
// // //     _textEditingController.dispose();
// // //     super.dispose();
// // //   }
  


// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //           // The search area here
// // //           title: Container(
            
// // //         width: double.infinity,
// // //         height: 40,
// // //         decoration: BoxDecoration(
          
// // //             color: Colors.white, borderRadius: BorderRadius.circular(5)),
// // //         child: Center(
// // //           child: TextField(
// // //             controller: _textEditingController,
// // //             decoration: InputDecoration(
              
// // //                 prefixIcon: Icon(Icons.search),
// // //                 suffixIcon: IconButton(
                  
// // //                                onPressed: () {
// // //                                  setState(() {
// // //                                    _textEditingController.clear();
// // //                                  });
// // //                                },
// // //                                icon: Icon(Icons.clear),
// // //                             ),
                
// // //                 hintText: 'Search...',
// // //                 border: InputBorder.none),
// // //                 onChanged: searchOperation,
// // //           ),
          
// // //         ),
        
// // //       )
      
// // //       ),
// // //       body:  StreamBuilder(
// // //        stream:  FirebaseFirestore.instance.collection("Ambulance").snapshots(),
// // //        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
// // //          if (!snapshot.hasData){
// // //            return CircularProgressIndicator();
// // //          }
// // //         return ListView(
          
// // //              children: snapshot.data!.docs.map((document){
// // //                return Card(
                 
// // //                  child: Padding(
// // //                    padding: const EdgeInsets.all(12.0),
// // //                    child: Container(
// // //                      child: ListTile( 
// // //                       //  crossAxisAlignment: CrossAxisAlignment.start,
// // //                       //  children: <Widget>[
// // //                       //    Text(document['name'], textAlign: TextAlign.left, ),
// // //                       //    Text(document['email'], textAlign: TextAlign.left),
// // //                       //    Text(document['location'], textAlign: TextAlign.left),
// // //                       //    Text(document['phonenumber'], textAlign: TextAlign.left),
// // //                       //    SizedBox( height: 20),
// // //                       //  ],
// // //                       title: Text(document['hospitalName'], textAlign: TextAlign.left ),
// // //                       subtitle: Text( document['location'] +"\n" + document['phonenumber']),
                      
// // //                      ),
// // //                    ),
// // //                  ),
// // //                );

// // //              }).toList(),
            
// // //         );
// // //          }
         
       
// // //      ),
     
// // //     );
    
// // //   }
// // // }

// // // void searchOperation(String searchText) {
// // //   searchresult.clear();
// // //   if (_isSearching != null) {
// // //     for (int i = 0; i < _list.length; i++) {
// // //       String data = _listli];
// // //       if (data.toLowerCase (). contains (searchText.toLowerCase())){
// // //         searchresult.add(data);
// // // }}}}


// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';

// class viewlist extends StatefulWidget {
  
//   viewlist({Key? key, required String phonenumber, required String location, required String hospitalName}) : super(key: key);
// late final String phonenumber;
//   late String hospitalName;
//   late String location;


//   @override
//   State<viewlist> createState() => _viewlistState();
// }

// class _viewlistState extends State<viewlist> {
  
  
//      late String districtlistsearch;
//   final FocusNode _textFocusNode = FocusNode();
//   final TextEditingController _textEditingController = new TextEditingController();
//   @override
//   void dispose() {
//     _textFocusNode.dispose();
//     _textEditingController.dispose();
//     super.dispose();
//   }
//   Widget appBarTitle = const Text(
//     "Search Example",
//     style: TextStyle(color: Colors.white),
//   );
//   Icon icon = Icon(
//     Icons.search,
//     color: Colors.white,
//   );
//   final globalKey = GlobalKey<ScaffoldState>();
//   final TextEditingController _controller = TextEditingController();
//     List<dynamic> _list= [];
//     bool _isSearching=false;
//   String _searchText = "";
//   List searchresult = [];

//   _SearchListExampleState() {
//     _controller.addListener(() {
//       if (_controller.text.isEmpty) {
//         setState(() {
//           _isSearching = false;
//           _searchText = "";
//         });
//       } else {
//         setState(() {
//           _isSearching = true;
//           _searchText = _controller.text;
//         });
//       }
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//      final routeData =
//         ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
//     final phonenumber = routeData['phonenumber'];
//     final location = routeData['location'];
//     final hospitalname = routeData['hospitalName'];
    
    // return  Scaffold(
    //   appBar: AppBar(
    //     title: Container(
            
    //     width: double.infinity,
    //     height: 40,
    //     decoration: BoxDecoration(
          
    //         color: Colors.white, borderRadius: BorderRadius.circular(5)),
    //     child: Center(
    //       child: TextField(
    //         controller: _textEditingController,
    //         decoration: InputDecoration(
              
    //             prefixIcon: Icon(Icons.search),
    //             suffixIcon: IconButton(
                  
    //                            onPressed: () {
    //                              setState(() {
    //                                _textEditingController.clear();
    //                              });
    //                            },
    //                            icon: Icon(Icons.clear),
    //                         ),
                
    //             hintText: 'Search...',
    //             border: InputBorder.none),
    //             onChanged: searchOperation,
    //       ),
    //       ),)),
//         key: globalKey,
//         body:  Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
          
//           children: [
//             Container(
//               padding: EdgeInsets.all(40.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 border: Border.all(color: Colors.deepOrange, width: 5),
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     phonenumber.toString(),
//                     style:
//                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                   ),
                  
//                   Text(
//                     hospitalname.toString(),
//                     style:
//                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     location.toString(),
//                     style:
//                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                   ),
//                 ],
          
//         )
//             ),
//              Divider(),
//              ]
//              )
//         );
//   }

//   Widget buildAppBar(BuildContext context) {
//     return AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
//        Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(25),
//               child: Form(
                
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 child: ListView(
//                   padding: EdgeInsets.all(4),
//                   children: <Widget>[
//                     DropdownSearch<String>(
                      
//                       showSelectedItems: true,
                      
//                       items: const ["Achham" ,
//       "Arghakhanchi",
//       "Baglung" ,
//       "Baitadi",
//       "Bajhang" ,
//       "Bajura" ,
//       "Banke" ,
//       "Bara" ,
//       "Bardiya" ,
//       "Bhaktapur" ,
//       "Bhojpur",
//       "Chitwan",
//       'Dadeldhura',
//       'Dailekh', 
//       'Dang', 
//       'Darchula', 
//       'Dhading', 
//       'Dhankuta' ,
// 'Dhanusha', 
// 'Dolakha', 
// 'Doti', 
// 'Eastern Rukum' ,
// 'Gorkha', 
// 'Gulmi', 
// 'Humla', 
// 'Ilam',
// 'Jajarkot' ,
// 'Jhapa', 
// 'Jumla' ,
// 'Kailali' ,
// 'Kalikot' ,
// 'Kanchanpur',
// 'Kapilvastu', 
// 'Kaski',
// 'Kathmandu' ,
// 'Kavrepalanchok' ,
// 'Khotang' ,
// 'Lalitpur',
// 'Lamjung' ,
// 'Mahottari' ,
// 'Makwanpur' ,
// 'Manang' ,
// 'Morang' ,
// 'Mugu' ,
// 'Mustang',
// 'Myagdi',
// 'Nawalpur',
// 'Nuwakot',
// 'Okhaldhunga', 
// 'Palpa' ,
// 'Panchthar',
// 'Parasi' ,
// 'Parbat' ,
// 'Parsa' ,
// 'Pyuthan' ,
// 'Ramechhap' ,
// 'Rasuwa' ,
// 'Rautahat',
// 'Rolpa' ,
// 'Rupandehi',
// 'Salyan' ,
// 'Sankhuwasabha' ,
// 'Saptari' ,
// 'Sarlahi' ,
// 'Sindhuli' ,
// 'Sindhupalchowk' ,
// 'Siraha' ,
// 'Solukhumbu' ,
// 'Sunsari' ,
// 'Surkhet' ,
// 'Syangja' ,
// 'Tanahun',
// 'Taplejung',
// 'Tehrathum' ,
// 'Udayapur' ,
// 'Western Rukum '
//       ],
//                       dropdownSearchDecoration: InputDecoration(
//                         hintText: "Select a location ",
//                         icon: const Icon(Icons.location_on),
//                        suffixIcon: GestureDetector(
//                              child: const Icon(Icons.clear),
//                              onTap: cleartext,
//                           ),
//                       ),
                      
                      
//                     ),
//                     const Divider(),
                    
 
//                     ]

                  
//                     )
//               )),

          
//           ],
//         )
          
      
//     ]);
//   }

//   void searchOperation(String searchText) {
//     searchresult.clear();
//     if (_isSearching != null) {
//       for (int i = 0; i < _list.length; i++) {
//         String data = _list[i];
//         if (data.toLowerCase().contains(searchText.toLowerCase())) {
//           searchresult.add(data);
//         }
//       }
//     }
//   }
// }

// final fieldText = TextEditingController();
//   void cleartext(){
//     fieldText.clear();
//   }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eabs/screens/buttonbar/admin/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';



class viewlist extends StatefulWidget {
  const viewlist({ Key? key }) : super(key: key);

  @override
  State<viewlist> createState() => _viewlistState();
}

class _viewlistState extends State<viewlist> {
  String searchString = "";
  
  Map<String, dynamic>? userMap;
  bool isLoading = false;
  final TextEditingController _search = TextEditingController();
   final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('Ambulance');
  
  Future getUser(String uid) async {
    return await _userCollection.doc(uid).snapshots().map((doc) {
      _userDataFromSnapshot(doc);
    });
  }
  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    setState(() {
      isLoading = true;
    });

    await _firestore
        .collection('Ambulance')
        .where("location", isEqualTo: _search.text)
        .orderBy("location")
        .orderBy("location")
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        isLoading = false;
      });
      print(userMap);
    });
  }
  // userData from snapshot
  Ambulance _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return Ambulance(
      uid: uid, ContactNumber: '', Location: '', HospitalName: '', Signal: '', url: '',
      
    );
  }

  FirebaseAuth auth  = FirebaseAuth.instance;
  late User user;
  late String uid;
  late DatabaseReference _dbref;

@override
void initState() {
  // TODO: implement initState
  super.initState();
  user= auth.currentUser!;
  uid = user.uid;
  _dbref = FirebaseDatabase.instance.reference().child("Ambulance").child(uid);

}

   final fb = FirebaseDatabase.instance;
   
  bool _flag = true;
   final TextEditingController _textEditingController = TextEditingController();
   List<String> ambulanceList =[ 
    

   ];
  @override
  Widget build(BuildContext context) {
    const String signal = "True";
    final ref = fb.ref().child("Ambulance");
  

    return Scaffold(

      appBar: AppBar(
        // title: Container(
            
        // width: double.infinity,
        // height: 40,
        // decoration: BoxDecoration(
          
        //     color: Colors.white, borderRadius: BorderRadius.circular(5)),
        // child: Center(
        //   child: TextField(
        //     controller: _search,
        //     decoration: InputDecoration(
              
        //         prefixIcon: Icon(Icons.search),
        //         suffixIcon: IconButton(
                  
        //                        onPressed: () {
        //                          setState(() {
        //                            _search.clear();
        //                          });
        //                        },
        //                        icon: Icon(Icons.clear),
        //                     ),
                
        //         hintText: 'Search...',
        //         border: InputBorder.none),
                
        //         onChanged:(value){
        //           onSearch();
                  
        //         },
        //   ),
        //   ),)
          ),
        

      body: Column(
children: <Widget>[
  Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      
      child: TextField(
        onChanged: (val){
          setState(() {
            searchString = val.toLowerCase();
          });
        },
        controller: _textEditingController,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => _textEditingController.clear()
           ) ,
           hintText: "Search",
        )
      )
    )
  ),

          
          
          
    //       StreamBuilder(
            
    //        stream:  FirebaseFirestore.instance.collection("Ambulance").snapshots(),
    //        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
    //          if (!snapshot.hasData){
    //            return CircularProgressIndicator();
    //          }
    //         return ListView(
              
    //              children: snapshot.data!.docs.map((document){
    //                return Card(
    //                  child: Padding(
    //                    padding: const EdgeInsets.all(12.0),
    //                    child: Container(
    //                      child: ListTile( 
    //                        leading: const CircleAvatar(
    //                             radius: 32,
    //                            backgroundImage: NetworkImage("https://www.hamrodoctor.com/img/default_ambulance.png"),
    //                             backgroundColor: Colors.white,
    //                           ),
    //                      title: Padding(
    //                             padding: EdgeInsets.only(bottom:5),
    //                           child: Text(document['hospitalName'], textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
    //                           ),
    //                       subtitle:Padding(
    //                             padding: EdgeInsets.only(bottom:5), 
    //                             child: Text( document['location'] +"\n" +  document['phonenumber'],
    //                             style: TextStyle(color: Colors.black, fontSize: 15),  ),),
                                

                              
    //                           trailing: Row(
    //                               mainAxisSize: MainAxisSize.min,
    //                               children: [
    //                                 OutlinedButton(
                            
    //                       //   onPressed: () async{
    //                       //     Map<String,String> user = {
    //                       //            "Signal": signal,
    //                       // } ;
    //                       //     Ambulance(HospitalName : document['hospitalName'],  Location: document['location'] , ContactNumber:  document['phonenumber'], 
    //                       //     url: '', Signal : signal );
    //                       // ref.push().set(user); 
    //                       //   },
    //                       onPressed: (){
    //                         _createDB();

    //                       },
                            
    //                         // => setState(() => _flag = true),
    //                         child: Text(_flag? "Book Now":"Booked",),
    //                         style: OutlinedButton.styleFrom(
    //                           primary: _flag? Colors.red : Colors.green,
    //                         ),

    //                       ),
    //                                 IconButton(onPressed: () async{
    //                                   await FlutterPhoneDirectCaller.callNumber(document['phonenumber']);

    //                                 }, icon: Icon(Icons.phone)),
    //                               ],
    //                             ),

    //                      ),
                         
    //                    ),
                       
    //                  ),
                     
    //                );

    //              }).toList(),
                
    //         );
    //          }
             
           
    //  ),
     Expanded(
       child: 
         StreamBuilder<QuerySnapshot>(
           stream: (searchString == null || searchString.trim() =="")
           ? FirebaseFirestore. instance.collection( "Ambulance"). snapshots()
           : FirebaseFirestore. instance.collection("Ambulance").where('location' , arrayContains: searchString).snapshots(),
           builder: (context, snapshot){
             if( snapshot.hasError){
               return Text("We got an error ${snapshot. error}");}
              switch(snapshot.connectionState){
                case ConnectionState.none:
                return Text('Oops no data present!');
                case ConnectionState.done:
                return Text("we are done!");
                default:
                return  StreamBuilder(
            
           stream:  FirebaseFirestore.instance.collection("Ambulance").snapshots(),
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
                           leading: const CircleAvatar(
                                radius: 32,
                               backgroundImage: NetworkImage("https://www.hamrodoctor.com/img/default_ambulance.png"),
                                backgroundColor: Colors.white,
                              ),
                         title: Padding(
                                padding: EdgeInsets.only(bottom:5),
                              child: Text(document['hospitalName'], textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
                              ),
                          subtitle:Padding(
                                padding: EdgeInsets.only(bottom:5), 
                                child: Text( document['location'] +"\n" +  document['phonenumber'],
                                style: TextStyle(color: Colors.black, fontSize: 15),  ),),
                                

                              
                              trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    OutlinedButton(
                            
                          //   onPressed: () async{
                          //     Map<String,String> user = {
                          //            "Signal": signal,
                          // } ;
                          //     Ambulance(HospitalName : document['hospitalName'],  Location: document['location'] , ContactNumber:  document['phonenumber'], 
                          //     url: '', Signal : signal );
                          // ref.push().set(user); 
                          //   },
                          onPressed: (){
                            _createDB();

                          },
                            
                            // => setState(() => _flag = true),
                            child: Text(_flag? "Book Now":"Booked",),
                            style: OutlinedButton.styleFrom(
                              primary: _flag? Colors.red : Colors.green,
                            ),

                          ),
                                    IconButton(onPressed: () async{
                                      await FlutterPhoneDirectCaller.callNumber(document['phonenumber']);

                                    }, icon: Icon(Icons.phone)),
                                  ],
                                ),

                         ),
                         
                       ),
                       
                     ),
                     
                   );

                 }).toList(),
                
            );
             }
             
           
     );
              }}
            

             )  )
        ],
      ),
     

      
    );
  }

  _createDB() {

  
   final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('Ambulance');
  
  
  
  // userData from snapshot
  Ambulance _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return Ambulance(
      uid: uid, ContactNumber: '', Location: '', HospitalName: '', Signal: '', url: '',
      
    );
  }
  Future getUser(String uid) async {
    return await _userCollection.doc(uid).snapshots().map((doc) {
      _userDataFromSnapshot(doc);
    });
  }
_dbref.child("profile").set("kamal profile");
_dbref.child("profile").child("uid").set(uid);
 
}
}


