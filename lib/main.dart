import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'constant.dart';
import 'screens/mainscreen.dart';
import 'widgets/roundedbutton.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EABS',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        )
      ),
      
      home: const WelcomeScreen(),
    );
  }
  }
  class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Stack(
              children: <Widget> [
                
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: CustomPaint(
                  painter: pathPainter(),
                ),
            ),
              
             Padding(
              padding: const EdgeInsets.fromLTRB(265, 0 ,0, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 390),
                child: Row(
                  children:  const [
                    Icon(
                        Icons.circle,
                        size: 5,
                        color: Colors.white,
                      ),
                    Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.white,
                      ),
                    Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.white,
                      ),
                    Icon(
                        Icons.circle,
                        size: 20,
                        color: Colors.white,
                      ),

                  ],
                ),
              ),
            ),
                Center(
                 child: SizedBox(
                   
              width: MediaQuery.of(context).size.width * .5,
              
              child: Padding(
                padding: const EdgeInsets.only(top: 400),
                
                child: RoundedButton(
                    text: "EABS",
                    color: Colors.red.shade700,
                    fontSize: 25,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const MainScreen();
                          },
                        ),
                      );
                    },
                ),
              ),
            ),
               ),
             Padding(
              padding: const EdgeInsets.fromLTRB(110, 0 ,0, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 490),
                child: Row(
                  children:  [
                    Icon(
                        Icons.circle,
                        size: 20,
                        color: Colors.red.shade800,
                      ),
                    Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.red.shade800,
                      ),
                    Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.red.shade800,
                      ),
                    Icon(
                        Icons.circle,
                        size: 5,
                        color: Colors.red.shade800,
                      ),

                  ],
                ),
              ),
            ),
              
            
          ],
          
        ),
          ],
      ),
      ),
    );
  }
}
class pathPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = path1Color;
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, size.height*0.1);
    
    path.quadraticBezierTo(size.width*0.35, size.height*0.40, size.width*0.59, size.height*0.6);
    path.quadraticBezierTo(size.width*0.72, size.height*0.7, size.width*0.92, size.height*0.8);
    path.quadraticBezierTo(size.width*0.98, size.height*0.835, size.width*0.1, size.height*0.85);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // ignore: todo
    // TODO: implement shouldRepaint
    return true;
  }
}
