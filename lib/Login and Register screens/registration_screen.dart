import 'package:blood_donation/Login%20and%20Register%20screens/login_screen.dart';
import 'package:blood_donation/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/my_container.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = "registration_screen";
  const RegistrationScreen({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 66,
              ),
              Container(
                width: 68.02,
                height: 102.12,
                child: Image.asset("assets/red.png"),
              ),
              SizedBox(
                height: 7.88,
              ),
              Container(
                height: 30,
                width: 201,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Dare",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Color(0xffFF2156),
                    ),),
                    Text("To",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Color(0xff595959),
                    ),),
                    Text("Donate",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Color(0xffFF2156),
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MyTextField(hinttext: "Hilal Khan", prefixicon: Icons.person_outline),
              SizedBox(
                height: 18,
              ),
              MyTextField(hinttext: "ahmedhilal818@gmail.com", prefixicon: Icons.email_outlined),
              SizedBox(
                height: 18,
              ),
              MyTextField(hinttext: "********", prefixicon: Icons.lock),
              SizedBox(
                height: 18,
              ),
              MyTextField(hinttext: "+92 349 650 57 59", prefixicon: Icons.call),
              SizedBox(
                height: 18,
              ),
              MyTextField(hinttext: "O negative", prefixicon: Icons.bloodtype),
              SizedBox(
                height: 18,
              ),
              MyTextField(hinttext: "Islamabad pakistan", prefixicon: Icons.location_on),
              SizedBox(
                height: 53,
              ),
              MyContainer(text: "REGISTER", textcolor: Color(0xffFFFFFF),color: Color(0xffFF2156),),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 29,
                width: 374,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7E7E7E),
                      ),),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, LoginScreen.id);
                      }, child: Text(" Log In.",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xffFF2156),
                      ),)),

                      SizedBox(
                        height: 27,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
