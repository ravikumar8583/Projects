import 'package:flutter/material.dart';
import 'package:ok/provider/itemaddNotiFier.dart';
import 'package:provider/provider.dart';

import 'addscreen.dart';

class ScaffoldeHome extends StatelessWidget {
  final String title = 'home';
  //const ScaffoldeHome({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddScreeItem();
                    },
                    fullscreenDialog: true,
                  ));
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<ItemAddNotiFier>(builder: (context, itemAddNotiFier, _) {
              return Container(
                height: 300,
                width: 200,
                child: ListView.builder(
                    itemCount: itemAddNotiFier.itemList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(itemAddNotiFier.itemList[index].itemName),
                      );
                    }),
              );
            })
          ],
        ),
      ),
    );
  }
}
