import 'package:flutter/material.dart';

class TitlePop extends StatelessWidget {
  String title;
  TitlePop({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
