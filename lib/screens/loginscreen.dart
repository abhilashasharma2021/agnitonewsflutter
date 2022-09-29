import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/inputTextWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 80.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Log In",
                style: TextStyle(fontFamily: "Poppins", fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Enter your log in details to continue",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            InputTextWidget(
                controller: _emailController,
                labelText: "User Email",
                icon: Icons.email,
                obscureText: false,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(
              height: 20.0,
            ),
            InputTextWidget(
                controller: _pwdController,
                labelText: "Password",
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.text),
            const Padding(
                padding: EdgeInsets.only(right: 25.0, top: 10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                )),
            const SizedBox(
              height: 50.0,
            ),
            Container(
              height: 45.0,
              child: ElevatedButton(
                onPressed: () async {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0.0,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    /*     boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.red,
                          offset: Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
*/
                    color: Colors.red, // Color(0xffF05945),
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: const LinearGradient(
                      colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Log In",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Donot have account?'),
                TextButton(
                  child: const Text(
                    'Create One',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),

           /* const Padding(
                padding: EdgeInsets.only(right: 25.0, top: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "or continue with",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontSize: 15.0,
                          fontFamily: "Poppins"),
                    ),
                  ),
                )),*/


          ],
        ),
      ),
    ));
  }
}
