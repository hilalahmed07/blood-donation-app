import 'package:blood_donation/Login%20and%20Register%20screens/login_screen.dart';
import 'package:blood_donation/Login%20and%20Register%20screens/registration_screen.dart';
import 'package:blood_donation/widgets/my_container.dart';
import 'package:flutter/material.dart';

class OnbordingThree extends StatelessWidget {
  static const String id = "onbording_three";
  const OnbordingThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 119,
            ),
            Container(
              height: 187.5,
              width: 125,
              child: Image.asset("red.png",fit: BoxFit.fill),
            ),
            SizedBox(
              height: 15.5,
            ),
            Container(
              height: 39,
              width: 260,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text("Dare",style: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 30,
                     color: Color(0xffFF2156),
                   ),),
                  Text("To",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Color(0xff595959),
                  ),),
                  Text("Donate",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Color(0xffFF2156),
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 54,
            ),
            Container(
              height: 67,
              width: 374,
              child: Center(
                child: Column(
                  children: [
                    Text("You can donate for ones in need and",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7E7E7E),
                    ),),
                    Text("request blood if you need.",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7E7E7E),
                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 89,
            ),
            // Container(
            //   height: 60,
            //   width: 374,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(30),
            //     border: Border.all(width: 2,color: Color(0xffFF2156))
            //   ),
            //   child: Center(
            //     child: Text("LOG IN",style: TextStyle(
            //       fontWeight: FontWeight.w500,
            //       fontSize: 22,
            //       color: Color(0xffFF2156),
            //     ),),
            //   ),
            // ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
                child: MyContainer(text: "LOG IN", textcolor: Color(0xffFF2156))),
            SizedBox(
              height: 21,
            ),

            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                child: MyContainer(text: "REGISTER", textcolor: Color(0xffFFFFFF), color: Color(0xffFF2156),)
            ),

            // Container(
            //   height: 60,
            //   width: 374,
            //   decoration: BoxDecoration(
            //     color: Color(0xffFF2156),
            //       borderRadius: BorderRadius.circular(30),
            //       border: Border.all(width: 2,color: Color(0xffFF2156))
            //   ),
            //   child: Center(
            //     child: Text("REGISTER",style: TextStyle(
            //       fontWeight: FontWeight.w500,
            //       fontSize: 22,
            //       color: Color(0xffFFFFFF),
            //     ),),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
