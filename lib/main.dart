import 'package:cashapp/Screens/AcceptCash.dart';
import 'package:cashapp/Screens/CashRequestSettle.dart';
import 'package:cashapp/Screens/CashierViewApproved.dart';
import 'package:cashapp/Screens/ChangePassword.dart';
import 'package:cashapp/Screens/GenerateReport.dart';
import 'package:cashapp/Screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import './Screens/Welcome.dart';


void main() {
  runApp(
    //MyApp()
      DevicePreview(
      builder: (context) => MyApp(),
      enabled: !kReleaseMode,
      ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GenerateReport(),
    );
  }
}
