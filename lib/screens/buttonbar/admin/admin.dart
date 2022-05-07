import 'package:flutter/material.dart';

import 'loginadmin.dart';


class Admin extends StatelessWidget {
  const Admin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
        
        children: <Widget>[
          const SizedBox(height:310.0),
          Center(
            child: SizedBox(
              width: 380.0,
              child:
            Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  loginadmin())
                    );
                }, 
                child: const SizedBox(
                  child: SizedBox(
                    width: 300,
                    
                    child: Text("Admin Login",textAlign: TextAlign.center,
                    
                    style: TextStyle( color: Colors.white, fontSize: 20 , fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
                color: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                ),
            ),
            ),
          ),
        ],
    ),
    );
  }
}