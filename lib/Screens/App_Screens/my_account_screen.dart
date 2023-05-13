import 'package:flutter/material.dart';

import '../../Widgets/title_pop.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitlePop(
            title: 'My Account',
          ),
        ],
      ),
    );
  }
}
