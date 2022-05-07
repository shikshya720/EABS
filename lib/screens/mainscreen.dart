import 'package:flutter/material.dart';
import 'buttonbar/about/about.dart';
import 'buttonbar/admin/admin.dart';
import 'buttonbar/contact/contact.dart';
import 'buttonbar/home/home.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: const Screen(child: MainScreen(),),
    );
  }
}

class Screen extends StatefulWidget {
  final Widget child;
   const Screen({ Key? key,
    required this.child
     }) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}
int _currentIndex = 0;
// ignore: unused_element
List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Admin(),
    const About(),
    const Contact()
  ];

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text("EABS")),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red.shade300,
        // selectedFontSize: 15,
        // nselectedFontSize: 10,
        
        
        items:  [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
            activeIcon: Icon(
              Icons.home,
              color: Colors.red.shade400,
            ),
            ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.admin_panel_settings_outlined),
            label: 'Admin',
            backgroundColor: Colors.red,
            activeIcon: Icon(
              Icons.admin_panel_settings_outlined,
              color: Colors.red.shade400,
            ),
            ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.info_outline),
            label: 'About',
            backgroundColor: Colors.red,
            activeIcon: Icon(
              Icons.info_outline,
              color: Colors.red.shade400,
            ),
            ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.mail_outline),
            label: 'Contact us',
            backgroundColor: Colors.red,
            activeIcon: Icon(
              Icons.mail_outline,
              color: Colors.red.shade400,
            ),
            ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
       body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}
     