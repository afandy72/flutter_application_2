import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/item.dart';

class cart with ChangeNotifier {
  List selected = [];

  add(Item product) {
    selected.add(product);
  }
}
