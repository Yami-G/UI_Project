import 'package:amit_course/Shared/Resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Widgets/custom_list_tile.dart';
import '../../Widgets/search_widget.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Wish List',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SearchWidget(
                width: double.infinity,
                searchWord: 'Search Product',
              ),
            ),
            CustomListTile(
              title: 'Bluetooth Printer',
              showIcon: true,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              imagePath: Images.lapTop,
              price: 200.75,
              index: 5,
            )
          ],
        ),
      ),
    );
  }
}
