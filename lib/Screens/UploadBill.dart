import 'package:cashapp/Constants.dart';
import 'package:cashapp/Screens/ApproveSettlement.dart';
import 'package:cashapp/Screens/ApprovedTick.dart';
import 'package:cashapp/Screens/CashRequest.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Components/Topics.dart';
import './Components/RoundedButtons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadBill extends StatefulWidget {
  @override
  _UploadBillState createState() => _UploadBillState();
}

class _UploadBillState extends State<UploadBill> {
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
                topic: "Upload Bill",
                width: double.infinity,
                height: Height * 0.080,
                textalign: TextAlign.center,
                textColor: primaryblackcolor,
                fontweight: FontWeight.bold,
                fontsize: 18,
                margin: EdgeInsets.only(
                    top: Height * 0.050, bottom: Height * 0.050),
              ),
              DottedBorder(
                dashPattern: const [8, 4],
                strokeWidth: 2,
                color: const Color.fromARGB(255, 207, 229, 238),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("#B5BFE4"),
                      padding: const EdgeInsets.only(left: 5, right: 5),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.image,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Drag or browse file to upload (max, 50MB)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              RoundedButton(
                hinttext: 'Submit',
                width: 150,
                margin:
                    EdgeInsets.only(bottom: Height * 0.050, top: Height * 0.1),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ApprovedSettlement()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
