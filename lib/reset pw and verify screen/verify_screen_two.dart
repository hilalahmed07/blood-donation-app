import 'package:blood_donation/Login%20and%20Register%20screens/login_screen.dart';
import 'package:blood_donation/widgets/my_container.dart';
import 'package:flutter/material.dart';

class VerifyScreenTwo extends StatelessWidget {
  static const String id = "verify_screen_two";
  const VerifyScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 163,
            ),
            Container(
              height: 228,
              width: 274.21,
              child: Image.asset("success.png",fit: BoxFit.fill,),
            ),
            SizedBox(
              height: 105,
            ),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                child: MyContainer(text: "FINISH", textcolor: Color(0xffFFFFFF),color: Color(0xffFF2156),)
            ),
          ],
        ),
      ),
    );
  }
}
