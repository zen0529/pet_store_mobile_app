import 'package:flutter/material.dart';

class Pets {
  final String petimage, petname, cartImage, color, weight, height, description;
  final int price, id;

  Pets(
      {this.id = 0,
      this.petimage = '',
      this.price = 0,
      this.petname = '',
      this.cartImage = '',
      this.description = '',
      this.color = '',
      this.height = '',
      this.weight = ''});
}

List<Pets> pets = [
  Pets(
      id: 1,
      petname: 'Persian Cat',
      petimage: 'lib/assets/persiancat.png',
      cartImage: 'lib/assets/Icon/cart.png',
      price: 85,
      description:
          "The Sphinx cat, hairless and charming, boasts a\nvelvety skin in various colors and patterns.\n Playful and affectionate, they capture hearts\nwith their unique appearance and lively\npersonalities.",
      height: '22 cm',
      weight: '3.5 kg',
      color: 'Dark Pink'),
  Pets(
      id: 2,
      petname: 'Sphinx Cat',
      petimage: 'lib/assets/sphinx.png',
      cartImage: 'lib/assets/Icon/cart.png',
      price: 60,
      description:
          "The Sphinx cat, hairless and charming, boasts a\nvelvety skin in various colors and patterns.\n Playful and affectionate, they capture hearts\nwith their unique appearance and lively\npersonalities.",
      height: '22 cm',
      weight: '3.5 kg',
      color: 'Dark Pink'),
  Pets(
      id: 3,
      petname: 'Bengal Cat',
      petimage: 'lib/assets/bengal.png',
      cartImage: 'lib/assets/Icon/cart.png',
      price: 90,
      description:
          "The Sphinx cat, hairless and charming, boasts a\nvelvety skin in various colors and patterns.\n Playful and affectionate, they capture hearts\nwith their unique appearance and lively\npersonalities.",
      height: '22 cm',
      weight: '3.5 kg',
      color: 'Dark Pink'),
  Pets(
      id: 4,
      petname: 'Cat',
      petimage: 'lib/assets/abyssian.png',
      cartImage: 'lib/assets/Icon/cart.png',
      price: 75,
      description:
          "The Sphinx cat, hairless and charming, boasts a\nvelvety skin in various colors and patterns.\n Playful and affectionate, they capture hearts\nwith their unique appearance and lively\npersonalities.",
      height: '22 cm',
      weight: '3.5 kg',
      color: 'Dark Pink'),
  Pets(
      id: 5,
      petname: 'Burmese Cat',
      petimage: 'lib/assets/burmese.png',
      cartImage: 'lib/assets/Icon/cart.png',
      price: 75,
      description:
          "The Sphinx cat, hairless and charming, boasts a\nvelvety skin in various colors and patterns.\n Playful and affectionate, they capture hearts\nwith their unique appearance and lively\npersonalities.",
      height: '22 cm',
      weight: '3.5 kg',
      color: 'Dark Pink'),
  Pets(
      id: 6,
      petname: 'Russian Cat',
      petimage: 'lib/assets/russian.png',
      cartImage: 'lib/assets/Icon/cart.png',
      price: 60,
      description:
          "The Sphinx cat, hairless and charming, boasts a\nvelvety skin in various colors and patterns.\n Playful and affectionate, they capture hearts\nwith their unique appearance and lively\npersonalities.",
      height: '22 cm',
      weight: '3.5 kg',
      color: 'Dark Pink'),
];
