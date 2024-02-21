import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Persian Cat", "lib/assets/cat-2.png", 85],
    ["Persian Cat", "lib/assets/cat-2.png", 85],
    ["Persian Cat", "lib/assets/cat-2.png", 85],
    ["Persian Cat", "lib/assets/cat-2.png", 85],
  ];

  get shopItems => _shopItems;
}
