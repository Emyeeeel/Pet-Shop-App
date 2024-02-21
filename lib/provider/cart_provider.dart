import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Persian Cat", "lib/assets/cat-2.png", 85],
    ["Sphinx Cat", "lib/assets/cat-3.png", 60],
    ["Bengal Cat", "lib/assets/cat-4.png", 90],
    ["Abyssinian Cat", "lib/assets/cat-5.png", 75],
    ["Burmese Cat", "lib/assets/cat-6.png", 75],
    ["Russian Blue Cat", "lib/assets/cat-7.png", 60],
  ];

  get shopItems => _shopItems;
}
