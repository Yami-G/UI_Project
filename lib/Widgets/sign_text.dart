import 'package:flutter/material.dart';

class SignScreenText extends StatelessWidget {
  const SignScreenText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
