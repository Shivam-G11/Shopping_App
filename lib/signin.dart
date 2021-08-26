import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shivam_pra/signup.dart';

import 'HomePage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 5),
                child: Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.lightBlueAccent),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,
                                color: Colors.lightBlueAccent),
                            hintText: "Email Address",
                            hintStyle: TextStyle(color: Colors.lightBlueAccent),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outlined,
                                color: Colors.lightBlueAccent),
                            suffixIcon: Icon(Icons.remove_red_eye_outlined,
                                color: Colors.lightBlueAccent),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.lightBlueAccent),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: RaisedButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.lightBlueAccent,
                          child: Center(child: Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.white),),),
                        ),
                      ),

                      SizedBox(
                        height: 60,
                      ),

                      Text("or using social media"),

                      SizedBox(
                        height: 50,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            child: Image.asset("assets/fb.png",),
                          ),
                          SizedBox(width: 10,),

                          Container(
                            height: 50,width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            child: Image.asset("assets/tw.png",),
                          ),

                          SizedBox(width: 10,),
                          Container(
                            height: 50,width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            child: Image.asset("assets/gm.png",),
                          ),

                          SizedBox(width: 10,),
                          Container(
                            height: 50,width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            child: Image.asset("assets/in.png",),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Doesn't have an account ? ",style: TextStyle(fontSize: 18,color: Colors.white),),
                  GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));},child: Text(" Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
