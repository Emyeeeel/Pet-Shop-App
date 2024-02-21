import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Persian Cat", "lib/assets/cat-2.png", 85],
    ["Sphinx Cat", "lib/assets/cat-3.png", 85],
    ["Bengal Cat", "lib/assets/cat-4.png", 85],
    ["Abyssinian Cat", "lib/assets/cat-5.png", 85],
  ];

  get shopItems => _shopItems;
}
