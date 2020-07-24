class Fruit {
  final int id;
  final String title;
  final String imageUrl;
  final int quantity;

  Fruit({this.id, this.title, this.imageUrl, this.quantity});

  factory Fruit.fromMap(Map<String, dynamic> json) {
    return Fruit(
        id: json['id'],
        title: json['title'],
        imageUrl: json['imageUrl'],
        quantity: json['quantity']);
  }

  factory Fruit.fromJson(Map<String, dynamic> json) {
    return Fruit(
        id: json['id'],
        title: json['title'],
        imageUrl: json['imageUrl'],
        quantity: json['quantity']);
  }
}
