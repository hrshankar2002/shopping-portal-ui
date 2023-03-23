import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movies_ui/components/bottom_nav_bar.dart';
import 'package:movies_ui/pages/cart_page.dart';
import 'package:movies_ui/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) {
          navigateBottomBar(index);
        },
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    DrawerHeader(
                        child: Image.asset(
                      "lib/images/logo.png",
                      color: Colors.white,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Divider(
                        color: Colors.grey[800],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: ListTile(
                        leading: Icon(
                          color: Colors.white,
                          Icons.home,
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: ListTile(
                        leading: Icon(
                          color: Colors.white,
                          Icons.info,
                        ),
                        title: Text(
                          'About',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(
                  color: Colors.white,
                  Icons.logout,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
