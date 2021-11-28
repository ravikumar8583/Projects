import 'package:flutter/material.dart';
import 'package:listing/createclassitem/createclassitem.dart';
import 'package:listing/listing/createlist.dart';
import 'package:listing/theme/themedata.dart';

void main() {
  runApp(MaterialApp(
    title: "listing",
    theme: AnotherclassTheme.themes,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CreateItemClass(
            itemobject: EntringItemValue.array[index],
          );
        },
        itemCount: EntringItemValue.array.length,
      ),
    );
  }
}
