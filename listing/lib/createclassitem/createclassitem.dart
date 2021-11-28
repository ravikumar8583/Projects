import 'package:flutter/material.dart';
//import 'package:listing/createclassitem/createclassitem.dart';
import 'package:listing/listing/createlist.dart';

class CreateItemClass extends StatelessWidget {
  final Item itemobject;
  const CreateItemClass({Key key, this.itemobject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(itemobject.image),
      title: Text(itemobject.name),
      trailing: Text("${itemobject.price}"),
    );
  }
}
