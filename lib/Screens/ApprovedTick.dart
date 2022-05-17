import 'package:cashapp/Screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cashapp/Constants.dart';
import 'Components/Topics.dart';
import './Components/RoundedButtons.dart';

class ApprovedTick extends StatelessWidget {
  const ApprovedTick({Key? key}) : super(key: key);

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
                height: 300,
              ),
              const Icon(Icons.done_outline_outlined, 
              color: Colors.green,
              size: 150,),
              Topic(
                topic: "Cash Advance of RS.xxxx.00 Was Approved for Purpose.",
                width: double.infinity,
                height: Height * 0.1,
                textalign: TextAlign.center,
                textColor: Colors.red,
                fontweight: FontWeight.bold,
                fontsize: 15,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
