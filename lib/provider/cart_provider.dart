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

  List _cartItems = [];

  get cartItems => _cartItems;

  void addToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String getTotalPrice() {
    double total = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      total += _cartItems[i][2];
    }
    return total.toStringAsFixed(2);
  }
}
