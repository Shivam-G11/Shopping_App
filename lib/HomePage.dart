// @dart=2.9
import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shivam_pra/intro.dart';
import 'package:shivam_pra/signup.dart';

import 'details.dart';
import 'orderList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Center(child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Intro()));},child: RaisedButton(color: Colors.lightBlueAccent,child: Text("Logout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
        ),
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(color: Colors.lightBlueAccent),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderList()));
                },
                child: Icon(Icons.add_shopping_cart,
                    color: Colors.lightBlueAccent)),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage("assets/icon.png"),
                backgroundColor: Colors.transparent,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20, right: 15, left: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Card(
                      elevation: 2,
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25,
                            ),
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 18)),
                      ),
                    ),
                  )),
              Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Stack(
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              "assets/home.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 60, right: 40),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 180,
                                    child: Text(
                                      "A room without books is like a body without soul",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.lightBlueAccent),
                                    ))),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 20, right: 20),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.lightBlueAccent),
                                width: 180,
                                height: 40,
                                child: Center(
                                    child: Text(
                                  "Collection",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/speaker.png")),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                "Flash Sales",
                                style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text("End In 10:20:30")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Details()));
                          },
                          child: Container(
                            height: 350,
                            width: 180,
                            child: Container(
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    height: 250,
                                    width: 180,
                                    child: Image.asset(
                                      "assets/detail.jpeg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 10),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            color: Colors.lightBlueAccent),
                                        width: 65,
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            "12.30%",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      left: 10,
                                      child: Container(
                                        width: 160,
                                        height: 130,
                                        child: Card(
                                          elevation: 5,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  child: Text(
                                                    "Maxi Dress",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.blue,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "130 Sales",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors
                                                            .yellow.shade700,
                                                      ),
                                                      Text(
                                                        "4.3",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  child: Text(
                                                    "25 Available",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8),
                                                  child: LinearPercentIndicator(
                                                    width: 137,
                                                    lineHeight: 5.0,
                                                    percent: 0.25,
                                                    backgroundColor:
                                                        Colors.grey,
                                                    progressColor: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Details()));
                          },
                          child: Container(
                            height: 350,
                            width: 180,
                            child: Container(
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    height: 250,
                                    width: 180,
                                    child: Image.asset(
                                      "assets/detail.jpeg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 10),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(18),
                                            color: Colors.lightBlueAccent),
                                        width: 65,
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            "12.30%",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      left: 10,
                                      child: Container(
                                        width: 160,
                                        height: 130,
                                        child: Card(
                                          elevation: 5,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Text(
                                                    "Maxi Dress",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.blue,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "130 Sales",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors
                                                            .yellow.shade700,
                                                      ),
                                                      Text(
                                                        "4.3",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Text(
                                                    "25 Available",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 8),
                                                  child: LinearPercentIndicator(
                                                    width: 137,
                                                    lineHeight: 5.0,
                                                    percent: 0.25,
                                                    backgroundColor:
                                                    Colors.grey,
                                                    progressColor: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Details()));
                          },
                          child: Container(
                            height: 350,
                            width: 180,
                            child: Container(
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    height: 250,
                                    width: 180,
                                    child: Image.asset(
                                      "assets/detail.jpeg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 10),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(18),
                                            color: Colors.lightBlueAccent),
                                        width: 65,
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            "12.30%",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      left: 10,
                                      child: Container(
                                        width: 160,
                                        height: 130,
                                        child: Card(
                                          elevation: 5,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Text(
                                                    "Maxi Dress",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.blue,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "130 Sales",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors
                                                            .yellow.shade700,
                                                      ),
                                                      Text(
                                                        "4.3",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Text(
                                                    "25 Available",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 8),
                                                  child: LinearPercentIndicator(
                                                    width: 137,
                                                    lineHeight: 5.0,
                                                    percent: 0.25,
                                                    backgroundColor:
                                                    Colors.grey,
                                                    progressColor: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Details()));
                          },
                          child: Container(
                            height: 350,
                            width: 180,
                            child: Container(
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    height: 250,
                                    width: 180,
                                    child: Image.asset(
                                      "assets/detail.jpeg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 10),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: new BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(18),
                                            color: Colors.lightBlueAccent),
                                        width: 65,
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            "12.30%",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      left: 10,
                                      child: Container(
                                        width: 160,
                                        height: 130,
                                        child: Card(
                                          elevation: 5,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Text(
                                                    "Maxi Dress",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.blue,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "130 Sales",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors
                                                            .yellow.shade700,
                                                      ),
                                                      Text(
                                                        "4.3",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 15),
                                                  child: Text(
                                                    "25 Available",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 8),
                                                  child: LinearPercentIndicator(
                                                    width: 137,
                                                    lineHeight: 5.0,
                                                    percent: 0.25,
                                                    backgroundColor:
                                                    Colors.grey,
                                                    progressColor: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
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
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.white,
            selectedItemBorderColor: Colors.transparent,
            selectedItemBackgroundColor: Colors.lightBlueAccent,
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.black,
            showSelectedItemShadow: false,
            barHeight: 70,
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.doorbell_outlined,
              label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.person_outline,
              label: '',
              selectedBackgroundColor: Colors.lightBlueAccent,
            ),
            FFNavigationBarItem(
              iconData: Icons.home_outlined,
              label: '',
              selectedBackgroundColor: Colors.lightBlueAccent,
            ),
            FFNavigationBarItem(
              iconData: Icons.message_outlined,
              label: '',
              selectedBackgroundColor: Colors.lightBlueAccent,
            ),
            FFNavigationBarItem(
              iconData: Icons.favorite_outline,
              label: '',
              selectedBackgroundColor: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
