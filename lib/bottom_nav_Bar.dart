import 'package:flutter/material.dart';

import 'Circle_avtar.dart';
import 'ColumnWidget.dart';
import 'assetsImage.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({Key? key}) : super(key: key);

  @override
  State<BottomNavBarDemo> createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  int selected = 0;
  List<Widget> screens = [
    AssetsImageWidget(),
    Center(
      child: Text("Orders Screens"),
    ),
    Center(
      child: Text("Profile Screens"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          unselectedFontSize: 13,
          selectedFontSize: 15,
          selectedIconTheme: IconThemeData(color: Colors.orange),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          currentIndex: selected,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Oreders"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: screens[selected],
    );
  }
}
