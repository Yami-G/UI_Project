import 'package:flutter/material.dart';

import '../Models/products_models.dart';

class ColorCircleCheck extends StatelessWidget {
  final Color backgroundColor;
  final ProductColor color;
  const ColorCircleCheck({
    super.key,
    required this.product,
    required this.color,
    required this.backgroundColor,
  });

  final ProductsModels product;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      child: product.productColor == color ? const Icon(Icons.check) : const SizedBox(),
    );
  }
}
