import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store_mobile_app/cart.dart';
import 'package:pet_store_mobile_app/home.dart';

class catalog extends StatefulWidget {
  const catalog({super.key});

  @override
  State<catalog> createState() => _catalogState();
}

int _selectedIndex = 0; // Initial index

class _catalogState extends State<catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const cart(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:
            Color(0xFFE8BE13), // Set the selected item color to yellow
        currentIndex:
            _selectedIndex, // Set the currentIndex to the selected index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index; // Update the selected index on tap
          });
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

      //     bottomNavigationBar: NavigationBar(height: 78, destinations: const [
      //   NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      //   NavigationDestination(
      //       Icons.menu_book_rounded), label: 'Catalog'),
      //   NavigationDestination(
      //       Icons.shopping_cart), label: 'Cart'),
      //   NavigationDestination(
      //       icon: Icon(Icons.person_2_rounded), label: 'Profile'),
      // ])
    );
  }
}
