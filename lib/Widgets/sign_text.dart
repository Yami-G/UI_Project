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
      style: TextStyle(
        color: Colors.black.withOpacity(0.38),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
