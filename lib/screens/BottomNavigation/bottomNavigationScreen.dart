import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  PageController pageController=PageController();
  int currentIndex = 0;


  @override
  void initState() {
    super.initState();
     pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: pageController,
             onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                        child: const Text.rich(
                                TextSpan(
                                    text:"Agnito",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 18.0,
                                    fontFamily: "Poppins"),
                                    children: [
                                      TextSpan(
                                        text: "Today",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18.0,
                                            fontFamily: "Poppins"),
                                      )
                                    ]
                                )
                            )
                    )
                  ],
                ),
              ),
              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.apps),
                title: Text('Home'),
                activeColor: Colors.blue,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Popular'),
                inactiveColor: Colors.black,
                activeColor: Colors.blue),

            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text('Video'),
                inactiveColor: Colors.black,
                activeColor: Colors.blue),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Profile'),
                inactiveColor: Colors.black,
                activeColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
