import 'package:flutter/material.dart';
import 'package:medical_app_design/walkthrough.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SplashScreen2()),
          );
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image(
            image: AssetImage("image/Splash.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Walkthrough()),
          );
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image(
            image: AssetImage("image/Splash2.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
