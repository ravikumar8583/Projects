import 'package:flutter/material.dart';
import 'package:ok/homepage.dart';
import 'package:ok/provider/itemaddNotiFier.dart';
import 'package:provider/provider.dart';
// import 'package:ok/inlist.dart/another.dart';
// import 'package:ok/inlist.dart/inlistclass.dart';
// import 'package:ok/inlist.dart/tile.dart';

// import 'inlist.dart/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ItemAddNotiFier();
      },
      child: MaterialApp(
        home: ScaffoldeHome(),
      ),
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: ChangeNotifierProvider(
    //     create: (context) => ItemAddNotiFier(),
    //     child: ScaffoldeHome(
    //       title: "title",
    //     ),
    //   ),
    // );
  }
}
