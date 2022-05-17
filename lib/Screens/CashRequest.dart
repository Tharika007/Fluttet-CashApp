import 'package:cashapp/Screens/CashRequestReview.dart';
import 'package:flutter/material.dart';
import 'package:cashapp/Constants.dart';
import 'package:hexcolor/hexcolor.dart';
import './Components/TextFormfields.dart';
import './Components/Dropdown.dart';
import './Components/RoundedButtons.dart';
import 'package:dotted_border/dotted_border.dart';

class CashRequest extends StatefulWidget {
  const CashRequest({Key? key}) : super(key: key);

  @override
  State<CashRequest> createState() => _CashRequestState();
}

class _CashRequestState extends State<CashRequest> {
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
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 210,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: const DecorationImage(
                          image: AssetImage("lib/Images/profilepic.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: const [
                        SizedBox(height: 10),
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          "Sandaru",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: Height * 0.120,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cash",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: HexColor("#000000"),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Advance",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: HexColor("#FC5000"),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Request",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Dropdown(
                labeltext: "Category",
                margin: EdgeInsets.only(bottom: Height * 0.020),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                onChanged: (String) {},
                items: const [
                  'Select Category',
                  'Labour',
                  'Material',
                  'Personal nature'
                ],
              ),
              Dropdown(
                labeltext: "SubCategory",
                margin: EdgeInsets.only(bottom: Height * 0.020),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                onChanged: (String) {},
                items: const [
                  'Select Subcategory',
                  'Labour',
                  'material',
                  'Personal nature'
                ],
              ),
              RoundedTextFormField(
                labeltext: "Project",
                margin: EdgeInsets.only(bottom: Height * 0.020),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
              ),
              RoundedTextFormField(
                labeltext: "WBS Element",
                margin: EdgeInsets.only(bottom: Height * 0.020),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
              ),
              RoundedTextFormField(
                labeltext: "Purpose",
                margin: EdgeInsets.only(bottom: Height * 0.020),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
              ),
              RoundedTextFormField(
                labeltext: "Amount",
                margin: EdgeInsets.only(bottom: Height * 0.020),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
              ),
              RoundedTextFormField(
                labeltext: "Description",
                margin: EdgeInsets.only(bottom: Height * 0.020),
                backgroundcolor: HexColor("#F6F7FA"),
                textColor: Colors.grey,
                width: double.infinity,
                height: Height * 0.080,
                press: () {},
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
                      primary: HexColor("B5BFE4"),
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
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              RoundedButton(
                hinttext: 'Submit',
                width: 180,
                margin: EdgeInsets.only(
                    bottom: Height * 0.040, top: Height * 0.040),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CashRequestReview()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
