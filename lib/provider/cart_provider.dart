import 'package:flutter/material.dart';
import 'package:pet_shop_app/models/catalog_models.dart';

class CartModel extends ChangeNotifier {
  List _shopItems = [
    ["Persian Cat", "lib/assets/cat-2.png", 85, 0],
    ["Sphinx Cat", "lib/assets/cat-3.png", 60, 0],
    ["Bengal Cat", "lib/assets/cat-4.png", 90, 0],
    ["Abyssinian Cat", "lib/assets/cat-5.png", 75, 0],
    ["Burmese Cat", "lib/assets/cat-6.png", 75, 0],
    ["Russian Blue Cat", "lib/assets/cat-7.png", 60, 0],
  ];

  get shopItems => _shopItems;

  final List _cartItems = [];

  get cartItems => _cartItems;

  void addToCart(int index) {
    if (!_cartItems.any((cartItem) => cartItem[0] == _shopItems[index][0])) {
      _shopItems[index][3]++;
      _cartItems.add(_shopItems[index]);
    } else {
      for (var i = 0; i < _cartItems.length; i++) {
        if (_cartItems[i][0] == _shopItems[index][0]) {
          _cartItems[i][3]++;
          break;
        }
      }
    }
    notifyListeners();
  }

  void decrementQuantity(int index) {
    _cartItems[index][3]--;
    if (_cartItems[index][3] == 0) {
      _cartItems.removeAt(index);
    }
    notifyListeners();
  }

  void incrementQuantity(int index) {
    _cartItems[index][3]++;
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

  final List _catItemsDetails = [
    [
      "Persian Cat",
      "lib/assets/persian.png",
      'The Persian cat is a beloved pet known for its striking looks and gentle nature. Known for their calm and affectionate temperament, making them ideal companions for those seeking a laid-back feline friend.',
      '3.18',
      '37',
      'White',
      'Persian'
    ],
    [
      "Sphinx Cat",
      "lib/assets/sphinx.png",
      'The Sphinx cat, hairless and charming, boasts a velvety skin in various colors and patterns. Playful and affectionate, they capture hearts with their unique appearance and lively personalities.',
      '3.63',
      '37',
      'Gray',
      'Sphinx'
    ],
    [
      "Bengal Cat",
      "lib/assets/bengal.png",
      'The Bengal cat stands out with its vibrant coat, dark brown, with distinctive markings that include black spots and rosettes. Bengal is also incredibly social, enjoying the company of both humans and other pets.',
      '4.26',
      '36',
      'Stripes',
      'Bengal'
    ],
    [
      "Abyssinian Cat",
      "lib/assets/abyssinian.png",
      'The Abyssinian cat is recognized for its distinctive appearance, featuring a glossy reddish-brown coat with black ticking. Abyssinians are known to be very social and adaptable to various living situations.',
      '4.54',
      '25',
      'Orange',
      'Abyssinian'
    ],
    [
      "Burmese Cat",
      "lib/assets/burmese.png",
      'The Burmese cat is celebrated for its striking color variations, including sable, champagne, platinum, and blue. Known for their curious and adventurous nature, making them excellent companions.',
      '5.35',
      '30',
      'Gray',
      'Burmese'
    ],
    [
      "Russian Blue Cat",
      "lib/assets/russian_blue.png",
      'The Russian Blue cat is renowned for its striking blue color and distinctive features, including a blue coat with white markings, blue eyes, and a distinctive tail that curls upwards.',
      '4.18',
      '46',
      'Ash Gray',
      'Russian Blue'
    ],
  ];

  get catItemsDetails => _catItemsDetails;

  int getShopItemIndex(String itemName) {
    int index = 0;
    for (int i = 0; i < _catItemsDetails.length; i++) {
      if (_catItemsDetails[i][0] == itemName) {
        index = i;
      }
    }
    return index;
  }

  void searchCat(String item) {
    final Iterable<dynamic> filteredItems = _shopItems.where((shopItem) {
      final catName = shopItem[0].toLowerCase();
      final input = item.toLowerCase();

      return catName.contains(input);
    });

    // Cast each dynamic item to List<dynamic> and collect them into a list
    final List<List<dynamic>> suggestions =
        filteredItems.map((dynamic item) => item as List<dynamic>).toList();

    _shopItems = suggestions;
    notifyListeners(); // Notify listeners to rebuild UI with the new list
  }
}
