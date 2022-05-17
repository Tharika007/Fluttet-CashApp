import 'package:cashapp/Constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CashAdvance {
  final String requestno, purpose, amount, date, status;
  final IconData icon;
  final Color iconcolor, textcolor;
  final void Function()? onPressed;

  const CashAdvance({
    required this.requestno,
    required this.status,
    required this.purpose,
    required this.amount,
    required this.date,
    required this.icon,
    required this.iconcolor,
    required this.textcolor,
    this.onPressed,
  });
}

class HomeAll extends StatefulWidget {
  const HomeAll({Key? key}) : super(key: key);

  @override
  State<HomeAll> createState() => _HomeAllState();
}

class _HomeAllState extends State<HomeAll> {
  List<CashAdvance> cash = [
    CashAdvance(
      icon: Icons.pending_actions,
      iconcolor: Colors.orange,
      status: "pending",
      requestno: "#CAR000021",
      date: "14 jan 2022",
      purpose: "A4 Paper",
      amount: "50000",
      textcolor: Colors.black,
      onPressed: () {},
    ),
    CashAdvance(
      icon: Icons.close_rounded,
      iconcolor: Colors.red,
      status: "Rejected",
      requestno: "#CAR000017",
      date: "14 jan 2022",
      purpose: "Meals",
      amount: "75000",
      textcolor: Colors.black,
      onPressed: () {},
    ),
    CashAdvance(
      icon: Icons.done_rounded,
      iconcolor: Colors.green,
      status: "Approved",
      requestno: "#CAR000021",
      date: "14 jan 2022",
      purpose: "Water",
      amount: "50000",
      textcolor: Colors.black,
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarybackgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Request No.",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Project",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Amount(RS)",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 800,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                separatorBuilder: (context, _) => const Divider(
                  thickness: 1,
                ),
                itemBuilder: (context, index) => buildrows(items: cash[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildrows({
  required CashAdvance items,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 7, bottom: 7, left: 20, right: 20),
      child: Container(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  items.icon,
                  color: items.iconcolor,
                  size: 20,
                ),
                Text(
                  items.status,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  items.requestno,
                  style: const TextStyle(color: Colors.black, fontSize: 13),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  items.date,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  items.purpose,
                  style: const TextStyle(color: Colors.black, fontSize: 13),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  items.amount,
                  style: const TextStyle(color: Colors.black, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
