import 'package:cashapp/Constants.dart';
import 'package:cashapp/Screens/ResetPassword.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Components/Topics.dart';
import './Components/TextFormfields.dart';
import './Components/RoundedButtons.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarybackgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Height * 0.090),
              Topic(
                topic: "Fentons",
                height: Height * 0.1,
                textalign: TextAlign.center,
                width: double.infinity,
                textColor: Colors.red,
                fontweight: FontWeight.w900,
                fontsize: 25,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
              SizedBox(height: Height * 0.1),
              Topic(
                topic: "Forgot Password?",
                width: double.infinity,
                height: Height * 0.1,
                textalign: TextAlign.center,
                textColor: primaryblackcolor,
                fontweight: FontWeight.bold,
                fontsize: 20,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
              RoundedTextFormField(
                labeltext: "Email",
                margin: EdgeInsets.only(bottom: Height * 0.040),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
              ),
              RoundedButton(
                hinttext: 'Request Password Reset Link',
                width: double.infinity,
                margin: EdgeInsets.only(bottom: Height * 0.050),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResetPassword()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
