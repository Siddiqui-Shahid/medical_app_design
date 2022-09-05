import 'package:flutter/material.dart';
import 'package:medical_app_design/login.dart';
import 'package:medical_app_design/verifyOTP.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool showPassword = false;
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create your account",
                style: TextStyle(
                  color: Color(0xff090F47),
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                style: TextStyle(fontSize: 18.0),
                decoration: InputDecoration(
                  hintText: "Your Name",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                style: TextStyle(fontSize: 18.0),
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                style: TextStyle(fontSize: 18.0),
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18.0),
                obscureText: showPassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffix: GestureDetector(
                    child: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 20.0,
                      ),
                      onPressed: () {
                        setState(() {
                          showPassword == true
                              ? showPassword = false
                              : showPassword = true;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyOTP()),
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
                        "CREATE ACCOUNT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "< Already have account? Login",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
