import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  String name;
   Tile({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 200,width: 200,child: ListTile(title: Text(name),),);
  }
}
