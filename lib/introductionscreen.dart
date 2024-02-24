import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store_mobile_app/bottomNavBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class introductionScreen extends StatefulWidget {
  const introductionScreen({super.key});

  @override
  State<introductionScreen> createState() => _introductionScreenState();
}

class _introductionScreenState extends State<introductionScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: const navbar(),
      body: Stack(
        children: [
          Container(
            height: 540.37,
            width: 394,
            child: PageView(
              controller: _controller,
              children: [
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/assets/introduction1.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/assets/introduction2.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/assets/introduction3.png"),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 0.05,
            right: 0.1,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26.27)),
              height: 372.73,
              width: 410,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your One-Stop Pet Shop Experience!",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.27,
                        color: const Color(0xFF141415)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8.76,
                  ),
                  Text(
                    "Connect with 5-star pet caregivers near\nyou who offer boarding, walking, house\nsitting or day care.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 17.51,
                        color: const Color(0xFFA1A1A1)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 43.78,
                  ),
                  Container(
                    height: 52.54,
                    width: 366.69,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.76),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFE8BE13)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/navbar');
                      },
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.51,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.2),
            child: SmoothPageIndicator(
              effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 15,
                  dotColor: Colors.white,
                  activeDotColor: Color(0xffE8BE13)),
              controller: _controller,
              count: 3,
            ),
          )
        ],
      ),
    );
  }
}
