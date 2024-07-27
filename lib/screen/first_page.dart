import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycanteen/widget/submit.dart';

class onboardfirst extends StatelessWidget {
  const onboardfirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Container(
          color: Colors.redAccent,
        ),
        Positioned(
          bottom: 30,left: 0,
            child: SvgPicture.asset("assets/Blob1.svg")),
        Positioned(
          bottom: 60,left: 20,
            child: Column(
              children: [
                Text("My Canteen", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold, fontSize: 50),),
                Container(
                  color: Colors.white,
                  height: 2,
                  width: 300
                ),
                SizedBox(height: 10,),
                Text("College Canteen a click away.", style: TextStyle(color: Colors.white , fontWeight: FontWeight.w600, fontSize: 17),),
                SizedBox(height: 60,),
                submit(label: 'GET STARTED', width: 80, onCountSelected: (){}, color: Colors.black87,)
              ],
            )),

          Positioned(
          top: 0,left: 0,
            child: SvgPicture.asset("assets/Blob2.svg")),
          Positioned(
          top: 50,right: 0,
            child: SvgPicture.asset("assets/backblob.svg")),
          Positioned(
          top: 60,left: 100,
            child: SvgPicture.asset("assets/girl.svg")),
          Positioned(
          top: 380,left: 140,
            child: SvgPicture.asset("assets/dish.svg")),
        ]
      ),
    );
  }
}
