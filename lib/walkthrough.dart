import 'package:flutter/material.dart';
import 'package:medical_app_design/welcome.dart';

class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

int pageNumber = 0;

class _WalkthroughState extends State<Walkthrough> {
  PageController pageController = PageController(initialPage: pageNumber);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0),
            width: double.infinity,
            height: 600.0,
            child: PageView(
              controller: pageController,
              children: [
                Image(
                  image: AssetImage('image/Walkthrough-1.png'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('image/Walkthrough-2.png'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('image/Walkthrough-3.png'),
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
            child: Row(
              children: [
                GestureDetector(
                  child: Text("Skip"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Welcome()),
                    );
                  },
                ),
                Expanded(flex: 5, child: Container()),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 2.0,
                ),
                SizedBox(
                  width: 3.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 2.0,
                ),
                SizedBox(
                  width: 3.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 2.0,
                ),
                SizedBox(
                  width: 3.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 2.0,
                ),
                SizedBox(
                  width: 3.0,
                ),
                Expanded(flex: 5, child: Container()),
                GestureDetector(
                  onTap: () {
                    if (pageNumber < 2) {
                      setState(() {
                        pageNumber++;
                      });
                      pageController.animateToPage(pageNumber,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceInOut);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
