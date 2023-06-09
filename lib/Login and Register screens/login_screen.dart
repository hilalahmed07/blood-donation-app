import 'package:blood_donation/Login%20and%20Register%20screens/registration_screen.dart';
import 'package:blood_donation/home%20screen/home_page.dart';
import 'package:blood_donation/home%20screen/pages%20for%20bottom%20navigation/home_screen.dart';
import 'package:blood_donation/reset%20pw%20and%20verify%20screen/resit_password.dart';
import 'package:blood_donation/widgets/my_container.dart';
import 'package:blood_donation/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
              height: 170,
            ),
            MyTextField(hinttext: "ahmedhilal818@gmail.com", prefixicon: Icons.email_outlined),
            // Container(
            //   height: 65,
            //   width: 374,
            //   decoration: BoxDecoration(
            //     color: Color(0xffF8F8F8)
            //   ),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: InputBorder.none,
            //       focusedBorder: InputBorder.none,
            //       prefixIcon: Icon(Icons.email_outlined,color: Color(0xffFF2156),size: 30,),
            //         prefixIconConstraints: BoxConstraints(minWidth: 40),
            //         prefix: SizedBox(
            //           width: 43,
            //         ),
            //
            //        // contentPadding: EdgeInsets.symmetric(horizontal: 16),
            //       //border: OutlineInputBorder(),
            //       hintText: "ahmedhilal818@gmail.com",
            //       hintStyle: TextStyle(
            //         fontSize: 18,
            //         fontWeight: FontWeight.w400,
            //         color: Color(0xff272A2F),
            //       )
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            MyTextField(hinttext: "********", prefixicon: Icons.lock),
            SizedBox(
              height: 85,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
                //Navigator.pushNamed(context, HomePage.id);
              },
                child: MyContainer(text: "LOG IN", textcolor: Color(0xffFFFFFF),color: Color(0xffFF2156),)
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 29,
              width: 159,
              child: Center(
                child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, ResetPassword.id);
                }, child: Text("Forgot Password?",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xffFF2156),
                ),)),
              ),
            ),


            SizedBox(
              height: 125,
            ),


            Container(
              height: 29,
              width: 374,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7E7E7E),
                    ),),
                    TextButton(onPressed: (){
                        Navigator.pushNamed(context, RegistrationScreen.id);
                    }, child: Text("  Register Now.",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xffFF2156),
                    ),))
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

























