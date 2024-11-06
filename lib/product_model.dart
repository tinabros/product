// product_model.dart
class Product {
  final int productId;
  final String title;
  final double price;
  final String description;
  final String image;

  Product({
    required this.productId,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['product_id'],
      title: json['title'],
      price: (json['price'] is String)
          ? double.parse(json['price'])
          : json['price'].toDouble(),
      description: json['description'],
      image: json['image'],
    );
  }
}
