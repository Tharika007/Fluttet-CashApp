import 'package:cashapp/Screens/CashRequestReview.dart';
import 'package:flutter/material.dart';
import 'package:cashapp/Constants.dart';
import 'package:hexcolor/hexcolor.dart';
import './Components/TextFormfields.dart';
import './Components/Dropdown.dart';
import './Components/RoundedButtons.dart';

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
      backgroundColor: primarybackgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Height * 0.090),
              Container(
                height: Height * 0.150,
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
              RoundedButton(
                hinttext: 'Submit',
                width: 200,
                margin: EdgeInsets.only(bottom: Height * 0.050),
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
