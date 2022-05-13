import 'package:cashapp/Constants.dart';
import 'package:cashapp/Screens/CashRequest.dart';
import 'package:cashapp/Screens/ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Components/Topics.dart';
import './Components/TextFormfields.dart';
import './Components/RoundedButtons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                topic: "LOGO",
                width: double.infinity,
                height: Height * 0.1,
                textalign: TextAlign.center,
                textColor: Colors.red,
                fontweight: FontWeight.bold,
                fontsize: 25,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
              SizedBox(height: Height * 0.2),
              RoundedTextFormField(
                labeltext: "Email",
                margin: EdgeInsets.only(bottom: Height * 0.040),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
              ),
              PasswordTextField(
                labeltext: "Password",
                margin: EdgeInsets.only(bottom: Height * 0.040),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                icon: Icons.visibility,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
              ),
              RoundedButton(
                hinttext: 'Log In',
                width: double.infinity,
                margin: EdgeInsets.only(bottom: Height * 0.050),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CashRequest()),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: Height * 0.040),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPassword()),
                  ),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: HexColor("#0082CD"),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
