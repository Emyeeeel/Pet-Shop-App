class CatalogModel {
  static List<Cat> catProducts = [
    Cat(1, 'Persian Cat', 85, 0),
    Cat(2, 'Sphinx Cat', 60, 0),
    Cat(3, 'Bengal Cat', 90, 0),
    Cat(4, 'Abyssinian Cat', 75, 0),
    Cat(5, 'Burmese Cat', 75, 0),
    Cat(6, 'Russian Blue Cat', 60, 0),
    Cat(7, 'Siamese Cat', 90, 0),
    Cat(8, 'Main Coon Cat', 85, 0),
    Cat(9, 'Ragdoll Cat', 80, 0),
    Cat(10, 'Scottish Fold Cat', 95, 0),
  ];
}

class Cat {
  final int id;
  final String name;
  final double price;
  final int quantity;

  Cat(this.id, this.name, this.price, this.quantity);
}

class CartItem {
  final Cat item;
  int quantity;

  CartItem(this.item, this.quantity);

  void incrementQuantity() {
    quantity++;
  }

  void decrementQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }
}
