import 'package:agnitonews/screens/ZoomDrawerNavigation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'menu_screen.dart';

void main() {

  runApp(ZoomDrawerScreen());
}
class ZoomDrawerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final drawerController=ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: drawerController,
        style: DrawerStyle.Style1,
        menuScreen: MenuScreen(),
        mainScreen:HomeScreen(drawerController),
        borderRadius: 24.0,
        showShadow: true,
        angle: 2.0,
        backgroundColor:Colors.blue,
        slideWidth: MediaQuery.of(context).size.width*.65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}



