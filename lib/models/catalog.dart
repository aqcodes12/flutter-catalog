class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.image);
}

final products = [
  Item(
    "aq1",
    "Product 1",
    "Description of Product 1",
    10.99,
    "https://picsum.photos/200/300",
  )
];
