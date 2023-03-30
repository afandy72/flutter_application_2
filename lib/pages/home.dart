import 'package:flutter/material.dart';

class Item {
  String imgpath;
  double price;
  Item({required this.imgpath, required this.price});
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: 16,
                        right: 0,
                        left: 0,
                        bottom: -3,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset("assets/img/download.jpg")),
                      ),
                    ]),
                    footer: GridTileBar(
                      trailing: IconButton(
                        color: Color.fromARGB(255, 62, 94, 70),
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                      leading: Text("\$12.33"),
                      title: Text(""),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/img/IMG_20210228_072428_802.jpg"),
                          fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                      radius: 44,
                      backgroundImage:
                          AssetImage("assets/img/IMG_20210228_072428_802.jpg")),
                  accountName: Text("Afandy72"),
                  accountEmail: Text("youssefafandy142@gmail.com")),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text("My Product"),
                leading: Icon(Icons.add_shopping_cart),
                onTap: () {},
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {},
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {},
              ),
              SizedBox(
                height: 350,
              ),
              Text("developed by Afandy72")
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
