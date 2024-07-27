import 'package:flutter/material.dart';
import 'package:mycanteen/widget/submit.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/burget.png", width: size.width,fit: BoxFit.fill,),
          SizedBox(height: 20,),
          Text("College canteen a click away" ,style: TextStyle(color: Colors.black , fontWeight: FontWeight.w300, fontSize: 25),),
          SizedBox(height: 20,),
          submit(label: "Explore Now", width: 80, onCountSelected: (){}, color: Colors.redAccent,)
        ],
      ),
    );
  }
}
