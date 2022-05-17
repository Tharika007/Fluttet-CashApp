import 'package:cashapp/Screens/ApprovedTick.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cashapp/Constants.dart';
import 'Components/Topics.dart';

class ApprovedSettlement extends StatelessWidget {
  const ApprovedSettlement({Key? key}) : super(key: key);

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
                height: 80,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: Height * 0.040),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ApprovedTick()),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(
                          color: HexColor("#0082CD"),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Topic(
                topic:
                    "Please submit the physical document to the approve the settlement",
                width: double.infinity,
                height: Height * 0.1,
                textalign: TextAlign.center,
                textColor: Colors.black,
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
