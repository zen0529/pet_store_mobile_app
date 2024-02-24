import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store_mobile_app/bottomNavBar.dart';
import 'package:pet_store_mobile_app/color.dart';
import 'package:pet_store_mobile_app/petDetails.dart';
import 'package:pet_store_mobile_app/classes/pets.dart';
import 'package:pet_store_mobile_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class catalog extends StatefulWidget {
  const catalog({super.key});

  @override
  State<catalog> createState() => _catalogState();
}

class _catalogState extends State<catalog> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 65,
            ),
            Text(
              'Store',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.normal, color: black),
            ),
            const SizedBox(
              height: 33.34,
            ),
            Container(
                width: 331,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: searchbar,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'lib/assets/Icon/search.svg',
                          )),
                    ),
                    Expanded(
                      child: Container(
                        width: 331,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Product or Brand',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: grey),
                              contentPadding: const EdgeInsets.only(
                                  left: 13, top: 18, bottom: 17)),
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 29.77,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 547,
                width: 361,
                child: GridView.builder(
                    itemCount: pets.length,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.89,
                      crossAxisCount: 2,
                      mainAxisSpacing: 24,
                      //crossAxisSpacing: 24
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      Pets pet = pets[index];
                      bool isInCart = cartProvider.items.contains(pets[index]);
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () => {
                            // Navigator.push(context, )
                          },
                          child: Container(
                            height: 171,
                            width: 168.5,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(pets[index].petimage),
                                const SizedBox(height: 10),
                                Text(
                                  pets[index].petname,
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF2E2D2D),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$${pets[index].price.toString()}',
                                      style: GoogleFonts.poppins(
                                        color: yellow,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (isInCart) {
                                            cartProvider.remove(pets[index]);
                                          } else {
                                            cartProvider.add(pets[index]);
                                          }
                                          isInCart = !isInCart;
                                        });
                                      },
                                      icon: Icon(
                                        isInCart
                                            ? Icons.check
                                            : Icons
                                                .shopping_cart, // Use ternary operator to choose the icon
                                        color: yellow,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: yellow, // Set the selected item color to yellow
        currentIndex:
            _selectedIndex, // Set the currentIndex to the selected index
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/introscreen');
          }
          if (index == 1) {
            Navigator.pushNamed(context, '/catalog');
          }
          if (index == 2) {
            Navigator.pushNamed(context, '/cart');
          }
          if (index == 3) {
            Navigator.pushNamed(context, '/stores');
          }

          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: 'Catalog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        ],
      ),
    );
  }
}
