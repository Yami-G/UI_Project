import 'package:amit_course/Widgets/square_size_check.dart';
import 'package:flutter/material.dart';

import '../Models/products_models.dart';

class SizeWidgetRow extends StatelessWidget {
  const SizeWidgetRow({
    super.key,
    required this.product,
  });

  final ProductsModels product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            'Size',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            SquareSizeCheck(
              number: '13',
              size: 13,
              product: product,
            ),
            SquareSizeCheck(
              number: '14',
              size: 14,
              product: product,
            ),
            SquareSizeCheck(
              number: '15',
              size: 15,
              product: product,
            ),
            SquareSizeCheck(
              number: '16',
              size: 16,
              product: product,
            ),
          ],
        ),
      ],
    );
  }
}
