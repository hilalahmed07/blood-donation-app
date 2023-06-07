import 'package:blood_donation/onBording%20pages/onbording_three.dart';
import 'package:flutter/material.dart';
class OnBordingTwo extends StatefulWidget {
  static const String id = "onbording_two";
  const OnBordingTwo({Key? key}) : super(key: key);

  @override
  State<OnBordingTwo> createState() => _OnBordingTwoState();
}

class _OnBordingTwoState extends State<OnBordingTwo> {
  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("On bording page one"),
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 109.01,
              ),
              Container(
                height: 265.9,
                width: 277.63,
                child: Image.asset("assets/rafiki.png",fit: BoxFit.fill,),
              ),
              SizedBox(
                height: 90.09,
              ),
              Container(
                height: 39,
                width: 244,
                child: Center(
                  child: Text("Post A Blood Request",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0xff272A2F),
                  ),),
                ),
              ),
              SizedBox(
                height: 38,
              ),
              Container(
                  height: 109,
                  width: 325,
                  child: Center(
                    child: Container(
                      child: Column(
                        children: [
                          Text("Lorem ipsum dolor sit amet,",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff7E7E7E),
                          ),),
                          Text("consectetur adipiscing elit. Arcu",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff7E7E7E),
                          ),),
                          Text("tristique tristique quam in.",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff7E7E7E),
                          ),),
                        ],
                      ),
                    ),
                  )
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 10,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffFF2156),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 146,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, OnbordingThree.id);
                  }, child: Text("Skip",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xff3A4351),
                  ),)),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, OnbordingThree.id);
                  }, child: Text("Next",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xffFF2156),
                  ),))
                ],
              ),
              SizedBox(
                height: 44,
              )

            ],
          ),
        ),
      ),
    );
  }
}
