import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static const String id = "home_screen";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final PageController _pageController = PageController();
  int _currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 46),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.dashboard,size: 27,color: Color(0xffFF2156),),
                  Icon(Icons.notifications_none_outlined,size: 27,color: Color(0xff272A2F),)
                ],
              ),
              SizedBox(height: 32,),
              Container(
                height: 179,
                width: 374,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),

               ),
               child: PageView(
                 controller: _pageController,

                  onPageChanged: (int page){
                   setState(() {
                     _currentpage = page.toInt();
                   });
                  },
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       image: DecorationImage(
                         image: AssetImage("rectangle.png"),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       image: DecorationImage(
                         image: AssetImage("rectangle.png"),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       image: DecorationImage(
                         image: AssetImage("rectangle.png"),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       image: DecorationImage(
                         image: AssetImage("rectangle.png"),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                 ],
               ),
               // child: Image.asset("rectangle.png",fit: BoxFit.cover,),
              ),
              SizedBox(
                height: 22,
              ),
              DotsIndicator(
                dotsCount: 4,
                  position: _currentpage,
               // position: ,
                decorator: DotsDecorator(
                    size: Size.square(9.0),
                    activeSize: Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    activeColor: Color(0xffFF2156),
                  //activeColor: Color(0xff2156),
                  color: Color(0xffE0E0E0)
              )
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 111,
                    width: 111,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          child: Image.asset("searchb.png",fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Center(
                            child: Text("Find Donors",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff7E7E7E)
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  Container(
                    height: 111,
                    width: 111,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          child: Image.asset("openmoji.png",fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Center(
                            child: Text("Donates",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7E7E7E)
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 111,
                    width: 111,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          child: Image.asset("blood-bag.png",fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Center(
                            child: Text("Order Bloods",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7E7E7E)
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 111,
                    width: 111,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          child: Image.asset("maki_doctor.png",fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Center(
                            child: Text("Assistant",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7E7E7E)
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  Container(
                    height: 111,
                    width: 111,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          child: Image.asset("medical.png",fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Center(
                            child: Text("Report",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7E7E7E)
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 111,
                    width: 111,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          child: Image.asset("grommet.png",fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Center(
                            child: Text("Campaign",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7E7E7E)
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 28,
                    width: 203,
                    child: Text("Donation Request",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff272A2F)
                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 146,
                width: 374,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffffffff),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 26,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 20,
                            width: 63,
                            child: Text("Name",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7E7E7E),
                            ),),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            height: 20,
                            width: 115,
                            child: Text("Amir Hamza",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff272A2F),
                            ),),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 20,
                            width: 71,
                            child: Text("Location",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7E7E7E),
                            ),),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            height: 20,
                            width: 210,
                            child: Text("Hertford British Hospital",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff272A2F),
                            ),),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            height: 20,
                            width: 73,
                            child: Text("5 Min Ago",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff7E7E7E),
                            ),),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 55,
                            width: 38,
                            child: Image.asset("Bloodg.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          Container(
                            height: 28,
                            width: 73,
                            child: Text("Donate",style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xffFF2156),
                            ),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )

            ]),
        ),
      ),
    );
  }
}
