import 'package:flutter/material.dart';

import 'orderList.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(
              color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(onTap: (){Navigator.of(context).pop();},child: Icon(Icons.arrow_back, color: Colors.lightBlueAccent)),
        actions: [
          GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => OrderList()));},child: Icon(Icons.add_shopping_cart, color: Colors.lightBlueAccent)),
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
            Center(
              child: Container(
                height: 350,
                width: 275,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(400),
                ),
                child: Image.asset(
                  "assets/detail.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(height: 10,),

            Center(
              child: Text("Maxi Dress",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 38,color: Colors.lightBlueAccent),
              ),
            ),

            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 100,
                width: 360,
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(fontSize: 17,color: Colors.lightBlueAccent),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Total Price :",
                style: TextStyle(fontSize: 17,color: Colors.lightBlueAccent),
              ),
            ),

            // SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(new String.fromCharCodes(new Runes("\u0024 24.00",)),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),),

                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Stack(children: [
                      Container(
                        height: 25,width: 25,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                        child: Image.asset("assets/icon5.png",color: Colors.lightBlueAccent,fit: BoxFit.fill,),
                      ),
                    ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 20,left: 15),
                    child: Container(
                      width: 190,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Add to Cart",
                            style: TextStyle(fontSize: 17,color: Colors.lightBlueAccent,fontWeight: FontWeight.bold),),
                          FloatingActionButton(onPressed: (){},backgroundColor: Colors.lightBlueAccent,
                            child: Icon(Icons.add,color: Colors.white,size: 25,),
                          ),
                        ],
                      ),
                    ),
                  )




                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
