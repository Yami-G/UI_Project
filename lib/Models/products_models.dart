enum ProductColor {
  red,
  blue,
  black,
  green,
}

class ProductsModels {
  int productID;
  String productName;
  double productPrice;
  String description;
  String imagePath;
  bool isFavorite;
  ProductColor productColor;
  int? size;
  int? quantity;

  ProductsModels({
    required this.productID,
    required this.productName,
    required this.productPrice,
    required this.description,
    required this.imagePath,
    required this.isFavorite,
    required this.productColor,
    this.size,
    this.quantity,
  });
}
