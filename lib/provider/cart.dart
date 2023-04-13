import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/item.dart';

class cart with ChangeNotifier {
  List selected = [];
  double price = 0;
  add(Item product) {
    selected.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Item product) {
    selected.remove(product);
    price -= product.price.round();
    notifyListeners();
  }
}
