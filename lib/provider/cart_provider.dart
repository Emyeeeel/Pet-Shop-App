import 'package:flutter/material.dart';

import '../models/catalog_models.dart';

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void add(Cat item) {
    // Check if the item already exists in the cart
    int index = _items.indexWhere((cartItem) => cartItem.item.id == item.id);
    if (index != -1) {
      // If it exists, increment the quantity
      _items[index].incrementQuantity();
    } else {
      // If it doesn't exist, add a new item with quantity  1
      _items.add(CartItem(item, 1));
    }
    notifyListeners();
  }

  void remove(Cat item) {
    _items.removeWhere((cartItem) => cartItem.item.id == item.id);
    notifyListeners();
  }

  void incrementItemCount(Cat item) {
    // Find the item in the cart and increment its quantity
    CartItem cartItem =
        _items.firstWhere((cartItem) => cartItem.item.id == item.id);
    cartItem.incrementQuantity();
    notifyListeners();
  }

  void decrementItemCount(Cat item) {
    // Find the item in the cart and decrement its quantity
    CartItem cartItem =
        _items.firstWhere((cartItem) => cartItem.item.id == item.id);
    cartItem.decrementQuantity();
    notifyListeners();
  }

  double getTotalPrice() {
    return _items.fold(
        0,
        (previousValue, item) =>
            previousValue + item.item.price * item.quantity);
  }
}
