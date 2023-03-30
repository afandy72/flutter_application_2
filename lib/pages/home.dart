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
              Text("\$13"),
              Text("\$13"),
            ],
          ),
        ],
        title: Text("Home"),
      ),
    );
  }
}
