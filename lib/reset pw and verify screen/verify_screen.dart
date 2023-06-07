import 'package:blood_donation/reset%20pw%20and%20verify%20screen/verify_screen_two.dart';
import 'package:blood_donation/widgets/my_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class OtpScreen extends StatefulWidget {
  static const String id = "verify_screen";
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();

  String _otp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 343,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Container(
                        color: Color(0xffF5F5f5),
                        child: TextFormField(
                          cursorColor: Color(0xffFF2156),
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Container(
                        color: Color(0xffF5F5f5),
                        child: TextFormField(
                          cursorColor: Color(0xffFF2156),
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Container(
                        color: Color(0xffF5F5f5),
                        child: TextFormField(
                          cursorColor: Color(0xffFF2156),
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Container(
                        color: Color(0xffF5F5f5),
                        child: TextFormField(
                          cursorColor: Color(0xffFF2156),
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).hasFocus;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 157, right: 20),
                child: Container(
                  height: 29,
                  width: 237,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Resend Code 49 Sec",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xffFF2156)
                    ),)
                  ],
                ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, VerifyScreenTwo.id);
                },
                  child: MyContainer(text: "VERIFY", textcolor: Color(0xffFFFFFF),color: Color(0xffFF2156),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class VerifyScreen extends StatelessWidget {
//   const VerifyScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 343,
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
