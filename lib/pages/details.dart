import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  "\$13",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
        title: Text("Details Screen"),
      ),
      body: Column(
        children: [
          Image.asset(
              "assets/img/kisspng-apple-watch-series-2-apple-watch-series-3-smartwat-black-smart-watch-5aa3dc83def0f3.3816676915206882599132.png"),
          SizedBox(
            height: 16,
          ),
          Text("\$12.22"),
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
                    "Whatch Shope",
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
              "Series 7 is the most durable Apple Watch ever built. Fundamental design changes were needed to achieve the vision of the larger Always-On Retina")
        ],
      ),
    );
  }
}
