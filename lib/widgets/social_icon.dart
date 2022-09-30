import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocalIcon extends StatelessWidget {
  final String  iconSrc;
  final Function press;

  const SocalIcon({
    Key?  key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:()=>press ,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: const BoxDecoration(
     /*     border: Border.all(
              width: 2,
              color: Colors.blue
          ),*/
          gradient: RadialGradient(
            colors: [
              Color(0xFF41CAFF),
              Color(0xFF416AFF)

            ]
          ),
          shape: BoxShape.circle,

        ),
        child: Image.asset(
          iconSrc,
          height: 30.0,
          width: 30.0,
        ),
      ),
    );
  }
}
