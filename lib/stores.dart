import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store_mobile_app/classes/nearbystores.dart';
import 'package:pet_store_mobile_app/color.dart';

class stores extends StatefulWidget {
  const stores({super.key});

  @override
  State<stores> createState() => _storesState();
}

class _storesState extends State<stores> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Stack(children: [
            Container(
              height: 459,
              width: 434.15,
              child: Image.asset(
                'lib/assets/map.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 62,
                left: 40,
                child: IconButton(
                    onPressed: () => {Navigator.pushNamed(context, '/catalog')},
                    icon: const Icon(Icons.arrow_back_ios_sharp)))
          ]),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 450,
                  width: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(50),
                        topEnd: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, right: 40),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Nearby Stores",
                                style: GoogleFonts.dmSans(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1E1E1E)),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Your Location',
                                style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xFF9D9D9D)),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Talab Khatikan, Old Heritage city - 180001, Jammu, India',
                                style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xFF343434)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 205,
                          width: 414,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: store.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Container(
                                    height: 200,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 4,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 93,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.white,
                                            ),
                                            child: Image.asset(
                                              store[index].storeimage,
                                              fit: BoxFit.cover,
                                            )),
                                        const SizedBox(height: 3),
                                        Text(store[index].storename,
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color:
                                                    const Color(0xFF333333))),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox(
                                              width: 0.5,
                                            ),
                                            Text('Open',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(
                                                        0xFF4F4F4F))),
                                            Container(
                                              width: 20,
                                              height: 13,
                                              color: yellow,
                                              child: Center(
                                                child: Text(
                                                  '4.3',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                          ],
                                        ),
                                        Text(store[index].location,
                                            style: GoogleFonts.poppins(
                                                fontSize: 7,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    const Color(0xFF4F4F4F))),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Container(
                                          height: 26,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: yellow,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Center(
                                            child: Text('Open',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
