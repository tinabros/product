class Product {
  final int productId;
  final String title;
  final double price;
  final String description;
  final int categoryId;
  final String image;

  Product({
    required this.productId,
    required this.title,
    required this.price,
    required this.description,
    required this.categoryId,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['product_id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      categoryId: json['category_id'],
      image: json['image'],
    );
  }
}
