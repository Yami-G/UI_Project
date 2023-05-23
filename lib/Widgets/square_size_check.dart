import 'package:flutter/material.dart';

import '../Models/products_models.dart';

class SquareSizeCheck extends StatelessWidget {
  final int size;
  final String number;
  const SquareSizeCheck({
    super.key,
    required this.number,
    required this.size,
    required this.product,
  });
  final ProductsModels product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: product.size == size ? Colors.grey.shade200 : Colors.white),
          child: Center(
            child: Text(
              '$number"',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
