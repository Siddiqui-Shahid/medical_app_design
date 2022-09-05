import 'package:flutter/material.dart';
import 'package:medical_app_design/login.dart';
import 'package:medical_app_design/signup.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  child: Image(
                    image: AssetImage("image/login image.JPG"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Image(image: AssetImage('image/Login Description.png')),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Image(image: AssetImage('image/signUpButton.png'))),
              Image(image: AssetImage('image/facebookButton.png')),
              Image(image: AssetImage('image/Google button.png')),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Container(
                  height: 20.0,
                  width: 50.0,
                  child: Image(
                    image: AssetImage('image/login text.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
