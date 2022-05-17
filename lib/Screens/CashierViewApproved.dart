import 'package:cashapp/Screens/CashRequest.dart';
import 'package:cashapp/Screens/Components/RoundedButtons.dart';
import 'package:cashapp/Screens/GenerateReport.dart';
import 'package:flutter/material.dart';
import 'package:cashapp/Constants.dart';
import 'package:hexcolor/hexcolor.dart';
import './Components/Topics.dart';
import './Components/Texts.dart';

class CashierViewApproved extends StatefulWidget {
  const CashierViewApproved({Key? key}) : super(key: key);

  @override
  State<CashierViewApproved> createState() => _CashierViewApprovedState();
}

class _CashierViewApprovedState extends State<CashierViewApproved> {
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
            children: [
              SizedBox(height: Height * 0.090),
              Align(
                alignment: Alignment.centerRight,
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
                width: 300,
                height: Height * 0.045,
                textalign: TextAlign.left,
                topic: "Cash Advance Request",
                textColor: Colors.black,
                margin: const EdgeInsets.all(0),
                fontsize: 18,
                fontweight: FontWeight.bold,
              ),
              Topic(
                width: 300,
                height: Height * 0.030,
                textalign: TextAlign.left,
                topic: "From",
                textColor: Colors.black,
                margin: const EdgeInsets.all(0),
                fontsize: 15,
                fontweight: FontWeight.normal,
              ),
              const SizedBox(
                height: 20,
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
                          topic: "Fentons",
                          width: double.infinity,
                          height: Height * 0.070,
                          textColor: Colors.red,
                          textalign: TextAlign.center,
                          fontweight: FontWeight.bold,
                          fontsize: 25,
                          margin: EdgeInsets.only(
                            top: Height * 0.050,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Request Number",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "#CAR00021",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Category",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "material",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Subcategory",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "A4 Paper",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Project",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "Hikkaduwa Project",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "WES Element",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "WBS Element",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Amont",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "75000",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Purpose",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "Traveling",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Date of Request",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "14 jan 2022",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Date of approval",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "Pending",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Status",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                            displaytext(
                              text: "approved",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.right,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Labeltext(
                              label: "Quotation",
                              margin: EdgeInsets.only(right: 5),
                              textColor: Colors.black,
                              textalign: TextAlign.left,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                            ),
                             Icon(Icons.download,
                             color: Colors.red,
                             ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              RoundedButton(
                hinttext: 'Mark as Unread',
                width: 220,
                margin: EdgeInsets.only(
                    bottom: Height * 0.050, top: Height * 0.050),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GenerateReport()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
