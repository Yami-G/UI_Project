import 'package:flutter/material.dart';
import '../../Shared/dummy_data/dummy_data_list.dart';
import '../../Widgets/list_tile_custom_widget.dart';
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SearchWidget(
                width: double.infinity,
                searchWord: 'Search Product',
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: bestSellingProducts.length,
                itemBuilder: (context, index) {
                  return ListTileCustom(
                    imagePath: bestSellingProducts[index].imagePath,
                    title: bestSellingProducts[index].productName,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    price: bestSellingProducts[index].productPrice,
                    showIcon: true,
                    makeNewWidget: false,
                    widget: const SizedBox(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
