import 'package:blood_donation/home%20screen/pages%20for%20bottom%20navigation/donation_request.dart';
import 'package:blood_donation/home%20screen/pages%20for%20bottom%20navigation/home_screen.dart';
import 'package:blood_donation/home%20screen/pages%20for%20bottom%20navigation/profile.dart';
import 'package:blood_donation/home%20screen/pages%20for%20bottom%20navigation/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_page";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    Search(),
    DonationRequest(),
    ProfilePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 31),
          child: FractionallySizedBox(
            widthFactor: 0.2,
            child: FloatingActionButton(
              backgroundColor: Color(0xffFF2156),
              onPressed: () {},
              child: Center(
                child: Container(
                  height: 24,
                  width: 16,
                  child: Image.asset("Group.png", fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 55,
              width: 374,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = HomePage();
                          currentTab = 0;
                        });
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_outlined,size: 30,color: currentTab == 0 ? Color(0xffFF2156): Color(0xffB3B3B3)),
                          ],
                        ),
                      ),
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = Search();
                          currentTab = 1;
                        });
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search,size: 30,color: currentTab == 1 ? Color(0xffFF2156): Color(0xffB3B3B3)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = DonationRequest();
                          currentTab = 2;
                        });
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bloodtype,size: 30,color: currentTab == 2 ? Color(0xffFF2156): Color(0xffB3B3B3)),
                          ],
                        ),
                      ),
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = ProfilePage();
                          currentTab = 3;
                        });
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline_outlined,size: 30,color: currentTab == 3 ? Color(0xffFF2156): Color(0xffB3B3B3)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
