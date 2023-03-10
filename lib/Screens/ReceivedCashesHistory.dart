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

class RecivedCashesHistory extends StatefulWidget {
  const RecivedCashesHistory({Key? key}) : super(key: key);

  @override
  State<RecivedCashesHistory> createState() => _RecivedCashesHistoryState();
}

class _RecivedCashesHistoryState extends State<RecivedCashesHistory> {
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
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Request No.",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Project",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Amount(RS)",
                      style: TextStyle(
                          color: HexColor("#00008B"),
                          fontSize: 15,
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
                ),
                Text(
                  items.status,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Column(
              children: [
                Text(items.requestno),
                Text(items.date,
                 style: TextStyle(color: Colors.grey),),
              ],
            ),
            Column(
              children: [
                Text(items.purpose),
              ],
            ),
            Column(
              children: [
                Text(items.amount),
              ],
            ),
          ],
        ),
      ),
    );
