class Furniture {
  final String title;
  final String description;
  final String url;
  final double price;
  final double rate;

  Furniture({this.title, this.description, this.url, this.price, this.rate});

  factory Furniture.fromJson(Map<String, dynamic> jsonData) {
    return Furniture(
      title: jsonData["title"],
      description: jsonData["description"],
      url: jsonData["url"],
      price: jsonData["price"],
      rate: jsonData["rate"],
    );
  }
}
