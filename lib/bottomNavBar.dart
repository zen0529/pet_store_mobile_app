import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pet_store_mobile_app/cart.dart';

import 'package:pet_store_mobile_app/catalog.dart';

import 'color.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

int _selectedIndex = 1; // Initial index

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // return CupertinoTabScaffold(
      //     tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.menu_book_rounded), label: 'Catalog'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.shopping_cart), label: 'Cart'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.person_2_rounded), label: 'Profile'),
      //     ]),
      //     tabBuilder: (context, index) {
      //       switch (index) {
      //         case 0:
      //           return CupertinoTabView(
      //             builder: (context) {
      //               return const CupertinoPageScaffold(child: home());
      //             },
      //           );
      //         case 1:
      //           return CupertinoTabView(
      //             builder: (context) {
      //               return const CupertinoPageScaffold(child: home());
      //             },
      //           );
      //         case 2:
      //           return CupertinoTabView(
      //             builder: (context) {
      //               return const CupertinoPageScaffold(child: cart());
      //             },
      //           );
      //         case 3:
      //           return CupertinoTabView(
      //             builder: (context) {
      //               return const CupertinoPageScaffold(child: cart());
      //             },
      //           );
      //         default:
      //           return Container();
      //       }
      //     }
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: yellow, // Set the selected item color to yellow
        currentIndex:
            _selectedIndex, // Set the currentIndex to the selected index
        onTap: (int index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/catalog');
          }
          if (index == 2) {
            Navigator.pushNamed(context, '/catalog');
          }
          if (index == 3) {
            Navigator.pushNamed(context, '/cart');
          }
          if (index == 4) {
            Navigator.pushNamed(context, '/catalog');
          } else {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: 'Catalog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}
