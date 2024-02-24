import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store_mobile_app/color.dart';
import 'package:pet_store_mobile_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

import 'classes/pets.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 23,
                ),
                IconButton(
                  onPressed: () => {Navigator.pushNamed(context, '/catalog')},
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: black,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  'Cart',
                  style: GoogleFonts.poppins(
                      fontSize: 35, fontWeight: FontWeight.bold, color: black),
                ),
              ],
            ),
            const SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Consumer<CartProvider>(
                builder: (context, provider, _) {
                  return Column(children: [
                    Container(
                      height: 547,
                      width: 394,
                      child: ListView.builder(
                          itemCount: provider.items.length,
                          itemBuilder: (BuildContext context, int index) {
                            Pets pets = provider.items[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(26.27),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 21.89,
                                      right: 21.89,
                                      bottom: 16.57,
                                      top: 16.57),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            pets.petimage,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text(
                                          pets.petname,
                                          style: GoogleFonts.poppins(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                              color: black),
                                        ),
                                        Text(
                                          '\$${pets.price}',
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: black),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              provider.remove(pets);
                                            },
                                            icon: const Icon(
                                              Icons.delete,
                                              color: yellow,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Total Amount: \$${provider.getCartTotal()}',
                              style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: black),
                            ),
                            const SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    )
                  ]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
