import 'package:flutter/material.dart';

import 'Views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DigitalNews',
      theme: ThemeData(
        accentColor: Colors.black,
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}
