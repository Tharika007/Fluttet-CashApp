import 'package:cashapp/Constants.dart';
import 'package:cashapp/Screens/CashRequest.dart';
import 'package:cashapp/Screens/UploadBill.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Components/Topics.dart';
import './Components/RoundedButtons.dart';

class GenerateReport extends StatefulWidget {
  @override
  _GenerateReportState createState() => _GenerateReportState();
}

class _GenerateReportState extends State<GenerateReport> {
  late DateTime _dateTime;

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
              SizedBox(height: Height * 0.1),
              Topic(
                topic: "Report",
                width: double.infinity,
                height: Height * 0.080,
                textalign: TextAlign.center,
                textColor: primaryblackcolor,
                fontweight: FontWeight.bold,
                fontsize: 18,
                margin: EdgeInsets.only(top: Height * 0.050),
              ),
              TextFormField(
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2040),
                  ).then((date) {
                    setState(() {
                      _dateTime = date!;
                    });
                  });
                },
                textAlign: TextAlign.left,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "From Date",
                  labelStyle: const TextStyle(fontSize: 18, color: Colors.black),
                  suffixIcon: const Icon(Icons.calendar_month),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: HexColor("#F6F7FA"),
                  contentPadding: const EdgeInsets.all(17),
                ),
              ),
              SizedBox( height: Height * 0.050),
              TextFormField(
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2040),
                  ).then((date) {
                    setState(() {
                      _dateTime = date!;
                    });
                  });
                },
                textAlign: TextAlign.left,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "To Date",
                  labelStyle: const TextStyle(fontSize: 18, color: Colors.black),
                  suffixIcon: const Icon(Icons.calendar_month),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: HexColor("#F6F7FA"),
                  contentPadding: const EdgeInsets.all(17),
                ),
              ),
              RoundedButton(
                hinttext: 'Genarate Report',
                width: double.infinity,
                margin: EdgeInsets.only(bottom: Height * 0.050, top: Height * 0.1),
                textColor: Colors.white,
                backgroundcolor: HexColor("#FC5000"),
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UploadBill()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
