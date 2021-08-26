import 'package:flutter/material.dart';
import 'package:shivam_pra/signup.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,right: 20),
              child: Align(alignment: Alignment.topRight,
                child: Container(
                  height: 50,
                  width: 100,
                  child: RaisedButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    color: Colors.cyan,
                    child: Text("Skip",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(300)),
              child: Image.asset("assets/shop.png"),
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 60,
                  width: 250,
                  child: Text("Be yourself, everyone else is already taken.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),),
                ),
              ),
            ),

            SizedBox(height: 30,),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 60,
                width: 270,
                decoration: BoxDecoration(color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50)),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },child: Text("Sign Up", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },child: Icon(Icons.arrow_forward,color: Colors.white,))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
