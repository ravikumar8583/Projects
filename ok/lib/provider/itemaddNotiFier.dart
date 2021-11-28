import 'package:flutter/material.dart';
import 'item.dart';

class ItemAddNotiFier extends ChangeNotifier {
  List<Item> itemList = [];
  addItem(String itemName) async {
    Item item = Item(itemName);
    itemList.add(item);
    notifyListeners();
  }
}
