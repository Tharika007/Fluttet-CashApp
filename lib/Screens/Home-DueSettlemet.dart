import 'package:cashapp/Constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CashAdvance {
  final String requestno, purpose, amount, date, status, category;
  final IconData icon;
  final Color iconcolor, textcolor;
  final void Function()? onPressed;

  const CashAdvance({
    required this.requestno,
    required this.status,
    required this.category,
    required this.purpose,
    required this.amount,
    required this.date,
    required this.icon,
    required this.iconcolor,
    required this.textcolor,
    this.onPressed,
  });
}

class HomeDue extends StatefulWidget {
  const HomeDue({Key? key}) : super(key: key);

  @override
  State<HomeDue> createState() => _HomeDueState();
}

class _HomeDueState extends State<HomeDue> {
  List<CashAdvance> cash = [
    CashAdvance(
      icon: Icons.new_releases,
      iconcolor: HexColor("#00008B"),
      status: "Issued",
      requestno: "#CAR000021",
      date: "settle by 14 jan 2022",
      purpose: "A4 Paper",
      category: "",
      amount: "50000",
      textcolor: Colors.black,
      onPressed: () {},
    ),
    CashAdvance(
      icon: Icons.new_releases,
      iconcolor: HexColor("#00008B"),
      status: "Issued",
      requestno: "#CAR000017",
      date: "settle by 14 jan 2022",
      purpose: "Meals",
      category: "",
      amount: "100000",
      textcolor: Colors.black,
      onPressed: () {},
    ),
    CashAdvance(
      icon: Icons.new_releases,
      iconcolor: HexColor("#00008B"),
      status: "Issued",
      requestno: "#CAR000021",
      date: "settle by 14 jan 2022",
      purpose: "Traveling",
      category: "",
      amount: "80000",
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
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Project",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Settlement Date",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Request ID",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Amount(RS)",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 12,
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
      padding: const EdgeInsets.only(top: 7, bottom: 7, left: 10, right: 10),
      child: Container(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      items.icon,
                      color: items.iconcolor,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      items.purpose,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                  ],
                ),
                Text(
                  items.status,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  items.date,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  items.requestno,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  items.amount,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
