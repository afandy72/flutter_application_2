import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Consumer<cart>(builder: ((context, www, child) {
            return Row(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Text(
                        "${www.selected.length}",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 4, 255, 17)),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(120, 255, 255, 255),
                          shape: BoxShape.circle),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    "\$ ${www.price}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            );
          })),
        ],
        title: Text("Home"),
      ),
    );
  }
}
