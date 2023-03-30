import 'package:flutter/material.dart';

class Item {
  String imgpath;
  double price;
  Item({required this.imgpath, required this.price});
}

final List<Item> items = [
  Item(
      imgpath:
          "assets/img/kisspng-apple-watch-series-2-apple-watch-series-3-smartwat-black-smart-watch-5aa3dc83def0f3.3816676915206882599132.png",
      price: 12.22),
  Item(
      imgpath:
          "assets/img/kisspng-apple-watch-smartwatch-vector-realistic-smart-watch-5aad7d5c55e541.6926858215213192603518.png",
      price: 23.2),
  Item(
      imgpath:
          "assets/img/kisspng-xiaomi-mi-band-2-smartwatch-xiaomi-mi-6-bands-5acea159da3d74.1559648415234911618939.png",
      price: 22.25),
  Item(
      imgpath:
          "assets/img/kisspng-sony-smartwatch-bluetooth-low-energy-wearable-tech-intelligent-digital-watches-5aa69bf93c2a36.6226957715208683452465.png",
      price: 44.11),
  Item(
      imgpath:
          "assets/img/kisspng-apple-watch-smartwatch-wearable-technology-apple-products-5ae095327cb341.9870369715246676985108.png",
      price: 10.09),
  Item(
      imgpath:
          "assets/img/kisspng-apple-watch-smartwatch-vector-realistic-smart-watch-5aad7d5c55e541.6926858215213192603518.png",
      price: 6.99)
];
