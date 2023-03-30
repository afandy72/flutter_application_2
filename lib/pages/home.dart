import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          Row(
            children: [
              Text(
                "\$13",
                style: TextStyle(fontSize: 20),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
            ],
          ),
        ],
        title: Text("Home"),
      ),
    );
  }
}
