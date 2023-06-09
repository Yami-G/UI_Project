import 'package:amit_course/Models/fakeAPI.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstRowDetails extends StatelessWidget {
  final Function()? onPressed;
  const FirstRowDetails({
    super.key,
    required this.product,
    this.onPressed,
  });

  final FakeApi product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '\$${product.price}',
              style: const TextStyle(
                color: Colors.indigo,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '\$32.5',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 1.5,
                  decorationColor: Theme.of(context).secondaryHeaderColor.withOpacity(0.54)),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 15,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '-32% Off',
                  style: TextStyle(color: Colors.red, fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: const FaIcon(
            FontAwesomeIcons.solidHeart,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
