import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcatser_2nd_pro/screens/product_1_screen/page/product_1_screen.dart';

import '../../product_2_screen/page/product_2_screen.dart';
import '../../product_3_screen/page/product_3_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> data = [
    const Product1Screen(),
    const Product2Screen(),
    const Product3Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 70,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.house_alt_fill),
            icon: Icon(CupertinoIcons.house_alt),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Serach",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.cart_fill),
            icon: Icon(CupertinoIcons.cart),
            label: "Cart",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return data[index];
          },
        );
      },
    ));
  }
}
