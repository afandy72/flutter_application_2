import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Shared/appbar.dart';
import '../model/item.dart';
import '../provider/cart.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isshow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [Productandprice()],
        title: Text("Details Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgpath),
            SizedBox(
              height: 16,
            ),
            Text("\$ ${widget.product.price}"),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 16),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 173, 12, 1),
                      borderRadius: BorderRadius.circular(4)),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                    ),
                    Icon(
                      Icons.star,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.edit_location,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      widget.product.location,
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  "Details: ",
                  style: TextStyle(fontSize: 22),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "Series 7 is the most durable Apple Watch ever built. Fundamental design changes were needed to achieve the vision of the larger Always-On Retina Alwayson Retina display has nearly 20% more screen area than Series 6 making everything easier to see and use · The most crackresistant front",
              maxLines: isshow ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isshow = !isshow;
                  });
                },
                child: Text(
                  isshow ? "See More" : "See less",
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
