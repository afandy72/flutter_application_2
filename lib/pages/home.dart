import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Afandy72"),
                  accountEmail: Text("youssefafandy142@gmail.com")),
            ],
          ),
        ),
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
          title: Text("Home"),
        ),
      ),
    );
  }
}
