
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';


// class viewlist extends StatefulWidget {
//  viewlist({ Key? key }) : super(key: key);
  

//   @override
//   State<viewlist> createState() => _viewlistState();
// }
// final fieldText = TextEditingController();
//   void cleartext(){
//     fieldText.clear();
//   }

// class _viewlistState extends State<viewlist> {
//   final _formKey = GlobalKey<FormState>();
//   final _multiKey = GlobalKey<DropdownSearchState<String>>();
  
//   late String districtlistsearch;
//   final FocusNode _textFocusNode = FocusNode();
//   TextEditingController? _textEditingController = TextEditingController();
//   @override
//   void dispose() {
//     _textFocusNode.dispose();
//     _textEditingController!.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         elevation: 0,
        
//       ),
      

//         body: Column(
//           children: [
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: Form(
//                   key: _formKey,
//                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                   child: ListView(
//                     padding: EdgeInsets.all(4),
//                     children: <Widget>[
//                       DropdownSearch<String>(
                        
//                         showSelectedItems: true,
                        
//                         items: const ["Achham" ,
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
//                         dropdownSearchDecoration: InputDecoration(
//                           hintText: "Select a location ",
//                           icon: Icon(Icons.location_on),
//                          suffixIcon: GestureDetector(
//                                child: Icon(Icons.clear),
//                                onTap: cleartext,
//                             ),
//                         ),
                        
                        
//                       ),
//                       Divider(),
                      
 
//                       ]

                    
//                       )
//                 )),
//             ),

//             Expanded(
//               child: )
//           ],
//         )
          
//       );
//   }
  
// }

