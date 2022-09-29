import 'dart:async';

import 'package:agnitonews/screens/loginscreen.dart';
import 'package:agnitonews/widgets/outline_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
/*    Timer(Duration(seconds:1),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    LoginScreen()
                )
            )
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/background.png"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 300.0,
                    width: 300.0,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Poppins",
                          ),
                          //style for all textspan
                          children: [
                            TextSpan(
                                text: "Find the latest news & updates \n",
                                style: TextStyle(fontSize: 18)),
                            TextSpan(
                                text: " from around the globel",
                                style: TextStyle(fontSize: 18)),
                          ])),
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      width: 150,
                      height: 50,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            onSurface: Colors.blue,
                            shadowColor: Colors.blue,

                            side:
                                const BorderSide(color: Colors.blue, width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          onPressed: () => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => const LoginScreen())),
                          child: const Text(
                            'Get Started',
                            style:
                                TextStyle(fontSize: 15, fontFamily: "Poppins"),
                          )))
                ],
              )
            ],
          )),
    );
  }
}
