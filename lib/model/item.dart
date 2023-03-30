import 'package:flutter/material.dart';

class Item {
  String imgpath;
  double price;
  Item({required this.imgpath, required this.price});
}

final List<Item> items = [
  Item(imgpath: "assets/img/-smartwatch-casio-smart-.png", price: 12.22),
  Item(imgpath: "assets/img/download.jpg", price: 23.2),
  Item(imgpath: "assets/img/png-transparent-apple-watch-l.png", price: 22.25),
  Item(
      imgpath:
          "assets/img/png-transparent-apple-watch-series-2-apple-watch-series-3-apple-watch-series-1-smart-apple-watch-sports-watch-band-watch-accessory-sport-grey-thumbnail.png",
      price: 44.11),
  Item(
      imgpath:
          "assets/img/png-transparent-apple-watch-series-2-apple-watch-series-3-smartwatch-black-smart-watch-black-hair-digital-black-white-thumbnail.png",
      price: 10.09),
  Item(imgpath: "assets/img/png-transparent-smartwatch-.png", price: 6.99)
];
