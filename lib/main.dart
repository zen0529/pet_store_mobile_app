import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pet_store_mobile_app/bottomNavBar.dart';
import 'package:pet_store_mobile_app/cart.dart';
import 'package:pet_store_mobile_app/catalog.dart';
import 'package:pet_store_mobile_app/introductionscreen.dart';
import 'package:pet_store_mobile_app/provider/cart_provider.dart';
import 'package:pet_store_mobile_app/stores.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => ChangeNotifierProvider(
            create: (context) => CartProvider(),
            child: const MyApp()), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const introductionScreen(),
      routes: {
        '/introscreen': (context) => const introductionScreen(),
        '/navbar': (context) => const navbar(),
        '/cart': (context) => const cart(),
        '/catalog': (context) => const catalog(),
        '/stores': (context) => const stores()
      },
    );
  }
}
