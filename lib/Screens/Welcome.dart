import 'package:cashapp/Screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cashapp/Constants.dart';
import 'Components/Topics.dart';
import './Components/RoundedButtons.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

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
            children: [
              const SizedBox(
                height: 200,
              ),
              Topic(
                topic: "LOGO",
                width: double.infinity,
                height: Height * 0.1,
                textalign: TextAlign.center,
                textColor: Colors.red,
                fontweight: FontWeight.bold,
                fontsize: 25,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
              const SizedBox(
                height: 200,
              ),
              Topic(
                topic: "Welcome to Cash Advance App",
                width: double.infinity,
                height: Height * 0.1,
                textalign: TextAlign.center,
                textColor: HexColor("#FC5000"),
                fontweight: FontWeight.bold,
                fontsize: 22,
                margin: EdgeInsets.only(
                    top: Height * 0.050, bottom: Height * 0.010),
              ),
              RoundedButton(
                hinttext: 'Get Started',
                width: double.infinity,
                margin: EdgeInsets.only(bottom: Height * 0.050),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
