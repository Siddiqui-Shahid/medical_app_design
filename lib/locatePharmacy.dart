import 'package:flutter/material.dart';

class LocatePharmacy extends StatefulWidget {
  @override
  _LocatePharmacyState createState() => _LocatePharmacyState();
}

class _LocatePharmacyState extends State<LocatePharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff090F47), //change your color here
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage("image/Google maps Image.png"),
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff4157FF),
                  borderRadius: BorderRadius.circular(300.0),
                ),
                child: Center(
                  child: Text(
                    "SELECT",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
