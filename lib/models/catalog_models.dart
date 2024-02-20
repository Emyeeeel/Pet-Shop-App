class CatalogModel {
  static List<Cat> catProducts = [
    Cat(1, 'Persian Cat', 85),
    Cat(2, 'Sphinx Cat', 60),
    Cat(3, 'Bengal Cat', 90),
    Cat(4, 'Abyssinian Cat', 75),
    Cat(5, 'Burmese Cat', 75),
    Cat(6, 'Russian Blue Cat', 60),
    Cat(7, 'Siamese Cat', 90),
    Cat(8, 'Main Coon Cat', 85),
    Cat(9, 'Ragdoll Cat', 80),
    Cat(10, 'Scottish Fold Cat', 95),
  ];
}

class Cat {
  final int id;
  final String name;
  final int price;

  Cat(this.id, this.name, this.price);
}
