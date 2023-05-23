import 'package:flutter/material.dart';

import '../Models/products_models.dart';
import 'color_circle_check.dart';

class ColorWidgetRow extends StatelessWidget {
  const ColorWidgetRow({
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
            'Color',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            ColorCircleCheck(
              product: product,
              color: ProductColor.red,
              backgroundColor: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ColorCircleCheck(
                product: product,
                color: ProductColor.black,
                backgroundColor: Colors.black,
              ),
            ),
            ColorCircleCheck(
              product: product,
              color: ProductColor.blue,
              backgroundColor: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            ColorCircleCheck(
              product: product,
              color: ProductColor.green,
              backgroundColor: Colors.green,
            ),
          ],
        )
      ],
    );
  }
}
