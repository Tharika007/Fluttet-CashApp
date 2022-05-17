import 'package:cashapp/Constants.dart';
import 'package:cashapp/Screens/CashRequest.dart';
import 'package:cashapp/Screens/Home-All.dart';
import 'package:cashapp/Screens/Home-DueSettlemet.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './Components/RoundedButtons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          labelStyle: TextStyle(color: Colors.blue),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200.0),
            child: AppBar(
              backgroundColor: primarybackgroundcolor,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 45,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,               
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: RoundedButton(
                          hinttext: 'New Cash Request',
                          width: 200,
                          margin: EdgeInsets.only(
                              bottom: Height * 0.050, top: Height * 0.010),
                          textColor: Colors.white,
                          backgroundcolor: HexColor("#FC5000"),
                          press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CashRequest()),
                          ),
                        ),
                      ),
                      const SizedBox(width: 50),
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
                        mainAxisAlignment: MainAxisAlignment.start,
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
                ],
              ),
              bottom: const TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 5.0,
                    color: Colors.blue,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16.0),
                ),
                tabs: [
                  Tab(text: 'All'),
                  Tab(
                    text: 'Due Settlemets',
                  )
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              HomeAll(),
              HomeDue(),
            ],
          ),
        ),
      ),
    );
  }
}
