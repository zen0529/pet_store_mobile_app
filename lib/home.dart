import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store_mobile_app/color.dart';
import 'package:pet_store_mobile_app/pets.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            height: 547,
            width: 361,
            child: GridView.builder(
                itemCount: pets.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.89,
                  crossAxisCount: 2,
                  mainAxisSpacing: 24,
                  //crossAxisSpacing: 24
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 171,
                      width: 168.5,
                      color: Colors.white,
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
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(pets[index].price),
                              const Icon(Icons.shopping_cart)
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
