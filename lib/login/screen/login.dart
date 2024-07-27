import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycanteen/widget/submit.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 0,left: 0,
              child: SvgPicture.asset("assets/down_fruit.svg")),
          Column(
            children: [
              Image.asset('assets/burger_up.png',width: size.width,fit: BoxFit.fill,),
              Padding(
                padding:  EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Text("Hello",style:  TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 60),),
                    Text("Sign in to your account",style:  TextStyle(color: Colors.grey , fontWeight: FontWeight.w500, fontSize: 17),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        //color: Colors.white,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 3,
                            )
                          ],
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Icon(Icons.person),
                            ),
                            SizedBox(
                              width: size.width*0.6,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: TextFormField(

                                  decoration: InputDecoration(hintText: 'Username', hintStyle: TextStyle(color: Colors.black54), border: InputBorder.none,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        //color: Colors.white,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 3,
                            )
                          ],
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Icon(Icons.lock),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: SizedBox(
                                width: size.width*0.6,
                                child: TextFormField(


                                  decoration: InputDecoration(hintText: 'Password', hintStyle: TextStyle(color: Colors.black54), border: InputBorder.none,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot your password?",style:  TextStyle(color: Colors.grey , fontWeight: FontWeight.w500, fontSize: 14),)),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Spacer(),
                        Text("Sign in", style:  TextStyle(color: Colors.black , fontWeight: FontWeight.w700, fontSize: 25),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
                              color: Colors.red,
                              highlightColor: Colors.white,
                              splashColor: Colors.black87,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height/90, horizontal: size.width/50),
                                  child: Text(
                                    "-->",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              onPressed: () {}
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 50,),
                    Text("Login using social media",style:  TextStyle(color: Colors.black54 , fontWeight: FontWeight.w500, fontSize: 16),),
                    SizedBox(height: 50,),
                    Text("Don't have an account? Create",style:  TextStyle(color: Colors.black87 , fontWeight: FontWeight.w500, fontSize: 16),),

                  ],
                ),
              ),

            ],
          )
                ],
      ),
    );
  }
}
