import 'dart:async';

import 'package:blood_donation/onBording%20pages/onbording_one.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "splash_screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double height = 0;
  double width = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushNamed(context, OnbordingOne.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    print("height of screen $height");
    print("height of screen $width");
    return Scaffold(
      backgroundColor: Color(0xffFF2156),
      body: Center(

        child: Column(
          children: [
            SizedBox(
                // height: 216
              height: height * 0.2410714285714286,
            ),
            Container(
              // height: 171,
              height:  height * 0.1908482142857143,
              // width: 114,
                width:  width * 0.2753623188405797,
                child: Image.asset("assets/Logo.png"),
            ),
            SizedBox(
              // height: 24,
               height: height * 0.0267857142857143,
            ),
            Container(
              // height: 39,
              height: height * 0.0435754189944134,
              // width: 260,
              width: width * 0.6280193236714976,
              child: Center(
                child: Text("Dare To Donate",style: TextStyle(
                  // fontSize: 33,
                  fontSize: (height * 0.6280193236714976/2) + (width * 0.0797101449275362/2),
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFF9F9),
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
