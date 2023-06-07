import 'package:blood_donation/reset%20pw%20and%20verify%20screen/verify_screen.dart';
import 'package:blood_donation/widgets/my_container.dart';
import 'package:blood_donation/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  static const String id = "resit_password";
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 316,
            ),
            MyTextField(hinttext: "ahmedhilal818@gmail.com", prefixicon: Icons.email_outlined),
            SizedBox(
              height: 39,
            ),
            Container(
              height: 56,
              width: 374,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your password reset will be send in",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7E7E7E),
                  ),),
                  Text("your registered email address.",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7E7E7E),
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                  Navigator.pushNamed(context, OtpScreen.id);
              },
                child: MyContainer(text: "Send", textcolor: Color(0xffFFFFFF),color: Color(0xffFF2156),)
            ),
          ],
        ),
      ),
    );
  }
}
