import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:medical_app_design/locatePharmacy.dart';
import 'package:medical_app_design/notification.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "image/Home/Rectangle 926.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xff4157fc),
                                radius: 14.0,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              // Icon(Icons.book),
                              // Icon(Icons.book),
                              Image(
                                  image: AssetImage(
                                      "image/Home/AppBarNofification.png")),
                              SizedBox(width: 10.0),
                              Image(
                                  image: AssetImage(
                                      "image/Home/AppBarShoping.png")),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Hi!Sarang",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 17.0),
                      Text(
                        "Welcome to company name",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            "Pune,Maharashtra",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    margin: EdgeInsets.only(top: 215.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Search Medicine & Healthcare products",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Top Categories",
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      TopCategory(
                        label: "Dental",
                        imageString: "image/Home/Dental.png",
                      ),
                      TopCategory(
                        label: "Wellness",
                        imageString: "image/Home/Wellness.png",
                      ),
                      TopCategory(
                        label: "Homeo",
                        imageString: "image/Home/Homeo.png",
                      ),
                      TopCategory(
                        label: "Eye care",
                        imageString: "image/Home/EyeCare.png",
                      ),
                      TopCategory(
                        label: "Skin & Hair",
                        imageString: "image/Home/SkinAndHair.png",
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200.0,
                  child: Center(
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image(
                          image: AssetImage(
                            "image/Home/PageViewImages.png",
                          ),
                        );
                      },
                      itemCount: 3,
                      pagination: new SwiperPagination(
                        alignment: Alignment.bottomCenter,
                      ),
                      // control: new SwiperControl(),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Deals of the Day",
                        style: TextStyle(
                          color: Color(0xff090F47),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "More",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  height: 240.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("image/Home/Med1.png")),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10.0, top: 10.0, bottom: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Accu-check Active",
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Color(0xff090F47),
                                    ),
                                  ),
                                  Text(
                                    "Test Strip",
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Color(0xff090F47),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$112",
                                        style: TextStyle(
                                          color: Color(0xff090F47),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      Container(
                                        color: Colors.yellow,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "4.2",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("image/Home/Med2.png")),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10.0, top: 10.0, bottom: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Omron HEM-8712",
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Color(0xff090F47),
                                    ),
                                  ),
                                  Text(
                                    "BP Monitor",
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Color(0xff090F47),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$150",
                                        style: TextStyle(
                                          color: Color(0xff090F47),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      Container(
                                        color: Colors.yellow,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "4.2",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, top: 40.0, bottom: 20.0),
                  child: Text(
                    "Deals of the Day",
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Feature(
                        image: "image/Home/feature1.png",
                        text: "Himalaya Wellness",
                      ),
                      Feature(
                        image: "image/Home/feature2.png",
                        text: "Accu-Chek",
                      ),
                      Feature(
                        image: "image/Home/feature3.png",
                        text: "Vlcc",
                      ),
                      Feature(
                        image: "image/Home/feature4.png",
                        text: "Protinex",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notify()),
                );
              },
              child: Image(
                image: AssetImage(
                  "image/Home/NotificationIcon.png",
                ),
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
    );
  }
}

class Feature extends StatelessWidget {
  final String image;
  final String text;

  const Feature({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image(
            fit: BoxFit.fitWidth,
            image: AssetImage(image),
          ),
          width: 70.0,
          height: 70.0,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          width: 100.0,
          child: Center(
            child: ListTile(
              title: Text(
                text,
                style: TextStyle(color: Color(0xff090F47), fontSize: 12.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TopCategory extends StatelessWidget {
  final String label;
  final String imageString;
  TopCategory({this.label, this.imageString});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(width: 2.0),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            width: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  Image(image: AssetImage(imageString)),
                  SizedBox(height: 10.0),
                  Text(label),
                ],
              ),
            ),
          ),
          SizedBox(width: 20.0),
        ],
      ),
    );
  }
}
