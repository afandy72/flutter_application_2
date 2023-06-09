import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/details.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:provider/provider.dart';

import '../Shared/appbar.dart';
import '../model/item.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final ttt = Provider.of<cart>(context);
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
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Details(
                                  product: items[index],
                                )));
                  },
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: 16,
                        right: 0,
                        left: 0,
                        bottom: -3,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgpath)),
                      ),
                    ]),
                    footer: GridTileBar(
                      trailing: IconButton(
                        color: Color.fromARGB(255, 4, 255, 17),
                        onPressed: () {
                          ttt.add(items[index]);
                        },
                        icon: Icon(Icons.add),
                      ),
                      leading: Text("${items[index].price}"),
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
          backgroundColor: Colors.black,
          actions: [Productandprice()],
          title: Text("Home"),
        ),
      ),
    );
  }
}
