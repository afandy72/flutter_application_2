import 'package:flutter/material.dart';

class cart with ChangeNotifier {
  List selected = [];

  add(product) {
    selected.add(product);
  }
}
