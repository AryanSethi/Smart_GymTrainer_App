import 'package:Smart_Workouts/main.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Smart_Workouts/home_page.dart';

class MySplashScreen extends StatefulWidget{
  List cameras;
  MySplashScreen(this.cameras);

  @override
  State<StatefulWidget> createState(){
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<MySplashScreen>{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      backgroundColor: Colors.black,
      image: Image.asset('assets/stick-f.png',),
      photoSize: 80.0,
      title: Text(
        'Smart Workouts',
        textScaleFactor: 2,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0
        ),
      ),
      loaderColor: Colors.green,
      navigateAfterSeconds: HomePage(widget.cameras),
    );
  }
}

