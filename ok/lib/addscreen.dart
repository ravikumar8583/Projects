import 'package:flutter/material.dart';
import 'package:ok/provider/itemaddNotiFier.dart';
import 'package:provider/provider.dart';

class AddScreeItem extends StatelessWidget {
  TextEditingController _data = TextEditingController();
  AddScreeItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: _data,
              decoration: InputDecoration(),
            ),
            RaisedButton(onPressed: () async {
              if (_data.text.isEmpty) {
                return;
              }
              await Provider.of<ItemAddNotiFier>(context).addItem(_data.text);
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}
