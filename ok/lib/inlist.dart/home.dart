import 'package:flutter/material.dart';
import 'package:ok/inlist.dart/tile.dart';

import 'another.dart';

class MyHomePage extends StatelessWidget {
  final countryName = List<EnterCountryName>.generate(
      10, (index) => EnterCountryName(countryName: "ok $index"));
  String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: countryName.length,
          itemBuilder: (context, index) {
            print("$index");

            return Tile(
              name: countryName[index].countryName,
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.red,
            );
          },
        ),
      ),
    );
  }
}
