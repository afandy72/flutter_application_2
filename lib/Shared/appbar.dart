import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:provider/provider.dart';

class Productandprice extends StatelessWidget {
  const Productandprice({super.key});

  @override
  Widget build(BuildContext context) {
    final ttt = Provider.of<cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
              child: Text(
                "${ttt.selected.length}",
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 4, 255, 17)),
              ),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color.fromARGB(120, 255, 255, 255),
                  shape: BoxShape.circle),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            "\$ ${ttt.price}",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
    ;
  }
}
