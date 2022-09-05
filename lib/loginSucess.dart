import 'package:flutter/material.dart';
import 'package:medical_app_design/homePage.dart';

class LoginSucess extends StatefulWidget {
  @override
  _LoginSucessState createState() => _LoginSucessState();
}

class _LoginSucessState extends State<LoginSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff090F47), //change your color here
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Image(image: AssetImage("image/LogIn Sucess verify.png")),
              SizedBox(height: 50.0),
              Image(image: AssetImage("image/LogIn Sucess description.png")),
              SizedBox(height: 100.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff4157FF),
                    borderRadius: BorderRadius.circular(300.0),
                  ),
                  child: Center(
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(color: Colors.white),
                    ),
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
