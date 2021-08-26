import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders",
          style: TextStyle(
              color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back, color: Colors.lightBlueAccent)),
        actions: [
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
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 55,
                      child: Center(
                          child: Text(
                        "All",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                        child: Center(
                            child: Text(
                          "Unpaid",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),
                        )),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                        child: Center(
                            child: Text(
                          "Shipped",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),
                        )),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 140,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                        child: Center(
                            child: Text(
                          "To be Shipped",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),
                        )),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                          color: Colors.lightBlueAccent
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.list_alt,
                                color: Colors.grey, size: 30)),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Orders List",
                          style: TextStyle(
                              color: Colors.blue.shade600,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.view_list,
                      color: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.view_comfortable,
                        color: Colors.lightBlueAccent, size: 30),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
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
                              "assets/order.jpeg",
                              fit: BoxFit.fill,
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
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Maxi Dress",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text(new String.fromCharCodes(new Runes("\u002424.00",)),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyan),),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "1440 Sales",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade700,
                                              ),
                                              Text(
                                                "4.3",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(left: 8),
                                        //   child: LinearPercentIndicator(
                                        //     width: 137,
                                        //     lineHeight: 5.0,
                                        //     percent: 0.25,
                                        //     backgroundColor: Colors.grey,
                                        //     progressColor: Colors.red,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                              "assets/order.jpeg",
                              fit: BoxFit.fill,
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
                                          const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Maxi Dress",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text(new String.fromCharCodes(new Runes("\u002424.00",)),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyan),),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "1440 Sales",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade700,
                                              ),
                                              Text(
                                                "4.3",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(left: 8),
                                        //   child: LinearPercentIndicator(
                                        //     width: 137,
                                        //     lineHeight: 5.0,
                                        //     percent: 0.25,
                                        //     backgroundColor: Colors.grey,
                                        //     progressColor: Colors.red,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
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
                              "assets/order.jpeg",
                              fit: BoxFit.fill,
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
                                          const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Maxi Dress",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text(new String.fromCharCodes(new Runes("\u002424.00",)),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyan),),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "1440 Sales",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade700,
                                              ),
                                              Text(
                                                "4.3",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(left: 8),
                                        //   child: LinearPercentIndicator(
                                        //     width: 137,
                                        //     lineHeight: 5.0,
                                        //     percent: 0.25,
                                        //     backgroundColor: Colors.grey,
                                        //     progressColor: Colors.red,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                              "assets/order.jpeg",
                              fit: BoxFit.fill,
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
                                          const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Maxi Dress",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text(new String.fromCharCodes(new Runes("\u002424.00",)),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyan),),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "1440 Sales",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade700,
                                              ),
                                              Text(
                                                "4.3",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(left: 8),
                                        //   child: LinearPercentIndicator(
                                        //     width: 137,
                                        //     lineHeight: 5.0,
                                        //     percent: 0.25,
                                        //     backgroundColor: Colors.grey,
                                        //     progressColor: Colors.red,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
