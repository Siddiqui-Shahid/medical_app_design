import 'package:flutter/material.dart';
import 'package:medical_app_design/locatePharmacy.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Container(),
            icon: Image(
              image: AssetImage(
                "image/Home/HomeIcon.png",
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Image(
              image: AssetImage(
                "image/Home/NotificationIcon.png",
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Container(
              padding: EdgeInsets.only(bottom: 3.0),
              height: 50.0,
              width: 50.0,
              child: Image(
                image: AssetImage(
                  "image/Home/Mediamodifier-Design-Template (1).png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocatePharmacy()),
                );
              },
              child: Image(
                image: AssetImage(
                  "image/Home/NavigationBar4.png",
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Image(
              image: AssetImage(
                "image/Home/NavigationBar5.png",
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff090F47), //change your color here
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Text(
              "Notification",
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(height: 40.0),
            NotifyItem(num: "1"),
            NotifyItem(num: "2"),
            NotifyItem(num: "3"),
            NotifyItem(num: "4"),
          ],
        ),
      ),
    );
  }
}

class NotifyItem extends StatelessWidget {
  final String num;

  const NotifyItem({Key key, this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Notification " + num),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 30.0,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 100.0,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
