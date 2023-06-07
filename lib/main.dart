import 'package:blood_donation/Login%20and%20Register%20screens/login_screen.dart';
import 'package:blood_donation/Login%20and%20Register%20screens/registration_screen.dart';
import 'package:blood_donation/onBording%20pages/onbording_one.dart';
import 'package:blood_donation/onBording%20pages/onbording_three.dart';
import 'package:blood_donation/onBording%20pages/onbording_two.dart';
import 'package:blood_donation/reset%20pw%20and%20verify%20screen/resit_password.dart';
import 'package:blood_donation/reset%20pw%20and%20verify%20screen/verify_screen.dart';
import 'package:blood_donation/reset%20pw%20and%20verify%20screen/verify_screen_two.dart';
import 'package:blood_donation/splash%20screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        OnbordingOne.id : (context) => OnbordingOne(),
        OnBordingTwo.id : (context) => OnBordingTwo(),
        OnbordingThree.id : (context) => OnbordingThree(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ResetPassword.id : (context) => ResetPassword(),
        OtpScreen.id : (context) => OtpScreen(),
        VerifyScreenTwo.id :(context) => VerifyScreenTwo(),
      },
    );
  }
}
