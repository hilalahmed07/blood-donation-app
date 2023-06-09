import 'package:blood_donation/onBording%20pages/onbording_two.dart';
import 'package:flutter/material.dart';

class OnbordingOne extends StatefulWidget {
  static const String id = "onbording_one";
  const OnbordingOne({Key? key}) : super(key: key);

  @override
  State<OnbordingOne> createState() => _OnbordingOneState();
}

class _OnbordingOneState extends State<OnbordingOne> {
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
                //height:  height * 0.1216629464285714,
              ),
              Container(
                height: 265.9,
                //height: height * 0.2967633928571429,
                 width: 277.63,
                //width: width * 0.6706038647342995,
                child: Image.asset("assets/bro.png",fit: BoxFit.fill,),
              ),
              SizedBox(
                 height: 90.09,
                //height: height * 0.100546875,
              ),
              Container(
                 height: 39,
                //height: height * 0.0435267857142857,
                 width: 244,
                //width: width * 0.5893719806763285,
                child: Center(
                  child: Text("Find Blood Donors",style: TextStyle(
                    fontWeight: FontWeight.w500,
                     fontSize: 24,
                  //  fontSize: (height * 0.0267857142857143/2)+ (width * 0.0579710144927536/2),
                    color: Color(0xff272A2F),
                  ),),
                ),
              ),
              SizedBox(
                height: 38,
                //height: height * 0.0424107142857143,
              ),
              Container(
                 height: 109,
                //height: height * 0.1216517857142857,
                 width: 325,
                //  width: width * 0.785024154589372,
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        Text("Lorem ipsum dolor sit amet,",style: TextStyle(
                          fontWeight: FontWeight.w500,
                           fontSize: 20,
                          //fontSize: (height * 0.0223214285714286/2) + (width * 1.16688837545800/2),
                          color: Color(0xff7E7E7E),
                        ),),
                        Text("consectetur adipiscing elit. Arcu",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          //fontSize: (height * 0.0223214285714286/2) + (width * 1.16688837545800/2),
                          color: Color(0xff7E7E7E),
                        ),),
                        Text("tristique tristique quam in.",style: TextStyle(
                          fontWeight: FontWeight.w500,
                           fontSize: 20,
                          //fontSize: (height * 0.0223214285714286/2) + (width * 1.16688837545800/2),
                          color: Color(0xff7E7E7E),
                        ),),
                      ],
                    ),
                  ),
                )
              ),
              SizedBox(
                 height: 19,
                //height: height * 0.0212053571428571,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    //height: height * 0.0111607142857143,
                     width: 45,
                    //width: width * 0.108695652173913,
                    decoration: BoxDecoration(
                      color: Color(0xffFF2156),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                     width: 16,
                    //width: width * 0.0386473429951691,
                  ),
                  Container(
                     height: 10,
                    //height: height * 0.0111607142857143,
                     width: 10,
                    //width: width * 0.0241545893719807,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 146,
                //height: height *0.1629464285714286 ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, OnBordingTwo.id);
                  }, child: Text("Skip",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xff3A4351),
                  ),)),
                  TextButton(onPressed: (){
                      Navigator.pushNamed(context, OnBordingTwo.id);
                  }, child: Text("Next",style: TextStyle(
                    fontWeight: FontWeight.w400,
                     fontSize: 20,
                    //fontSize: (height * 0.0223214285714286/2) + (width * 1.16688837545800/2),
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
