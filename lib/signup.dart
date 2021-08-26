import 'package:flutter/material.dart';
import 'package:shivam_pra/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(scrollDirection: Axis.vertical,
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
                            "Sign Up",
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
                            hintText: "Confirm Password",
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
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.lightBlueAccent,
                          child: Center(child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.white),),),
                        ),
                      ),

                      SizedBox(
                        height: 50,
                      ),

                      Text("or using social media"),

                      SizedBox(
                        height: 20,
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
                            child: Image.asset("assets/tw.png"),
                          ),

                          SizedBox(width: 10,),
                          Container(
                            height: 50,width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            child: Image.asset("assets/gm.png"),
                          ),

                          SizedBox(width: 10,),
                          Container(
                            height: 50,width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            child: Image.asset("assets/in.png"),
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
                  Text("Already have an account ? ",style: TextStyle(fontSize: 18,color: Colors.white),),
                  GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));},child: Text(" Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
