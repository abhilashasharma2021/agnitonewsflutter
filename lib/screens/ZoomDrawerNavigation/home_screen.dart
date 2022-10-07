import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final zoomDrawerController;


  HomeScreen(this.zoomDrawerController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Home Page"),leading:InkWell(onTap: ()=>zoomDrawerController.toggle(),
      child: Icon(Icons.menu),)),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),

    );
  }
}
