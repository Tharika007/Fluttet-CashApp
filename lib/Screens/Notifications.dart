import 'package:cashapp/Constants.dart';
import 'package:cashapp/Screens/CashRequest.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Components/Topics.dart';

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
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
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: Height * 0.040),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CashRequest()),
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
              Topic(
                topic: "Notification",
                width: double.infinity,
                height: Height * 0.1,
                textalign: TextAlign.left,
                textColor: primaryblackcolor,
                fontweight: FontWeight.bold,
                fontsize: 20,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
              Topic(
                topic: "Cash Advance Request Recieved",
                height: Height * 0.050,
                textalign: TextAlign.center,
                width: double.infinity,
                textColor: Colors.black,
                fontweight: FontWeight.w900,
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
