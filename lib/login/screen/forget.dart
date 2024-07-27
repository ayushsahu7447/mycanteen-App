import 'package:flutter/material.dart';
import 'package:mycanteen/widget/submit.dart';
import 'package:mycanteen/widget/text_form_feild.dart';

class Forget_Password extends StatefulWidget {
  const Forget_Password({Key? key}) : super(key: key);

  @override
  State<Forget_Password> createState() => _Forget_PasswordState();
}

class _Forget_PasswordState extends State<Forget_Password> {
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Image.asset("assets/forget.png"),
              Text("Forget Password",style:  TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 30),),
              Text("Don't worry It happens. Please enter the \n    address associated with your account",style:  TextStyle(color: Colors.grey , fontWeight: FontWeight.w500, fontSize: 17),),
              SizedBox(height: 40,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(" Email-ID",style:  TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 20),)),
              Row(
                children: [
                  Expanded(child: MyTextField(myController: email, fieldName: 'Enter Your Email-ID',myIcon: Icons.email,prefixIconColor: Colors.black,keyboard: TextInputType.number,onSaved: (value) {
                    email.text = value!;
                  }, )),
                ],
              ),
              SizedBox(height: 20,),
              submit(label: "Submit", width: 100, onCountSelected: (){}, color: Colors.redAccent),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don't have an account ?",style: TextStyle(color: Colors.black87 , fontWeight: FontWeight.bold, fontSize: 17),),
                  Text("Sign up", style:  TextStyle(color: Colors.red , fontWeight: FontWeight.bold, fontSize: 17),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
