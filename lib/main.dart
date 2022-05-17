import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import './Screens/Welcome.dart';

void main() {
  runApp(MyApp()
      //DevicePreview(
      //builder: (context) => MyApp(),
      //enabled: !kReleaseMode,
      //),
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
      home: Welcome(),
    );
  }
}
