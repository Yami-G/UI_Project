import 'package:flutter/material.dart';

class customRow extends StatelessWidget {
  String leftText;
  String rightText;
  customRow({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leftText),
        Text(rightText),
      ],
    );
  }
}
