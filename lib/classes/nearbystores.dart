import 'package:flutter/material.dart';

class Stores {
  final String storeimage, storename, location;

  Stores({this.storeimage = '', this.storename = '', this.location = ''});
}

List<Stores> store = [
  Stores(
    storeimage: 'lib/assets/furry.png',
    storename: 'Furry Friends ',
    location: 'Talab Khatikan, Old\nHeritage city - 180001,\njammu, India',
  ),
  Stores(
    storeimage: 'lib/assets/pawprints.png',
    storename: 'Pawprints Pet ',
    location: 'Talab Khatikan, Old\nHeritage city - 180001,\njammu, India',
  ),
  Stores(
    storeimage: 'lib/assets/petkit.png',
    storename: 'The Pet Kingdom',
    location: 'Talab Khatikan, Old\nHeritage city - 180001,\njammu, India',
  ),
];
