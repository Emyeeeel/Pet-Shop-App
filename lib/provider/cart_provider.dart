import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Persian Cat", "lib/assets/cat-2.png", 85, 0],
    ["Sphinx Cat", "lib/assets/cat-3.png", 60, 0],
    ["Bengal Cat", "lib/assets/cat-4.png", 90, 0],
    ["Abyssinian Cat", "lib/assets/cat-5.png", 75, 0],
    ["Burmese Cat", "lib/assets/cat-6.png", 75, 0],
    ["Russian Blue Cat", "lib/assets/cat-7.png", 60, 0],
    ["Persian Cat", "lib/assets/cat-2.png", 85, 0],
    ["Sphinx Cat", "lib/assets/cat-3.png", 60, 0],
    ["Bengal Cat", "lib/assets/cat-4.png", 90, 0],
    ["Abyssinian Cat", "lib/assets/cat-5.png", 75, 0],
    ["Burmese Cat", "lib/assets/cat-6.png", 75, 0],
    ["Russian Blue Cat", "lib/assets/cat-7.png", 60, 0],
  ];

  get shopItems => _shopItems;

  List _cartItems = [];

  get cartItems => _cartItems;

  void addToCart(int index) {
    _shopItems[index][3]++;
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String getTotalForItemPrice(int index) {
    double total = _cartItems[index][2] * _cartItems[index][3];
    return total.toStringAsFixed(2);
  }

  String getTotalPrice() {
    double total = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      total += double.parse(getTotalForItemPrice(i));
    }
    return total.toStringAsFixed(2);
  }
}
