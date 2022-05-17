import 'package:cashapp/Constants.dart';
import 'package:cashapp/Screens/CashRequest.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Components/Topics.dart';
import './Components/RoundedButtons.dart';
import './Components/TextFormFields.dart';

class RejectCashAdvance extends StatefulWidget {
  @override
  _RejectCashAdvanceState createState() => _RejectCashAdvanceState();
}

class _RejectCashAdvanceState extends State<RejectCashAdvance> {
  late DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: HexColor("#EC5F5F"),
        unselectedItemColor: Colors.grey,
        iconSize: 27,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: 'Messeges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
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
              SizedBox(height: Height * 0.1),
              Topic(
                topic: "Reject",
                width: double.infinity,
                height: Height * 0.080,
                textalign: TextAlign.center,
                textColor: primaryblackcolor,
                fontweight: FontWeight.bold,
                fontsize: 18,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
              Container(
                width: double.infinity,
                color: HexColor("#F6F7FA"),
                child: Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      children: [
                        Topic(
                          topic: "Reject Reason",
                          width: double.infinity,
                          height: Height * 0.070,
                          textColor: Colors.black,
                          textalign: TextAlign.center,
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          margin: EdgeInsets.only(
                            top: Height * 0.050,
                          ),
                        ),
                        RoundedTextFormField(
                          labeltext: "",
                          margin: EdgeInsets.only(top: Height * 0.040),
                          backgroundcolor: HexColor("#FFFFFF"),
                          textColor: Colors.grey,
                          width: double.infinity,
                          height: 100,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              RoundedButton(
                hinttext: 'Reject',
                width: 180,
                margin:
                    EdgeInsets.only(bottom: Height * 0.050, top: Height * 0.1),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CashRequest()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
