import 'package:agnitonews/screens/loginscreen.dart';
import 'package:agnitonews/widgets/social_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/inputTextWidget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _isHidden = true;
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Create Account",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Enter your details to get registered",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              InputTextWidget(
                  controller: _nameController,
                  labelText: "User Name",
                  icon: Icons.account_circle_rounded,
                  obscureText: false,
                  suffixIcon: null,
                  keyboardType: TextInputType.name),
              const SizedBox(
                height: 20.0,
              ),
              InputTextWidget(
                  controller: _mobileController,
                  labelText: "Mobile Number",
                  icon: Icons.phone,
                  suffixIcon: null,
                  obscureText: false,
                  keyboardType: TextInputType.phone),
              const SizedBox(
                height: 20.0,
              ),
              InputTextWidget(
                  controller: _emailController,
                  labelText: "User Email",
                  icon: Icons.email,
                  suffixIcon: null,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 20.0,
              ),
              InputTextWidget(
                  controller: _pwdController,
                  labelText: "Password",
                  icon: Icons.lock,
                  obscureText: _isHidden,
                  suffixIcon: IconButton(
                    onPressed: _togglePasswordView,
                    icon: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  keyboardType: TextInputType.text),
              Align(
                alignment: Alignment.center,
                child: CheckboxListTile(
                  dense: true,
                  title: const Text(
                    'Agree to all terms & conditions ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.4),
                  ),
                  autofocus: false,
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.leading,
                  selected: _value,
                  value: _value,
                  onChanged: (bool? value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
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
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: const Text.rich(TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(color: Colors.black, fontSize: 15.0),
                          children: [
                            TextSpan(
                              text: "Log In",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16.0),
                            )
                          ])))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  SocalIcon(
                      iconSrc: "assets/gmail.png",
                      press: (){}
                  ),
                  SocalIcon(
                      iconSrc: "assets/facebook.png",
                      press: (){}
                  )

                ],
              )

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
      ),
    ));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
