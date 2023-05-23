import 'package:amit_course/Widgets/elevation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Models/products_models.dart';
import '../Provider/cart_provider.dart';
import '../Provider/product_provider.dart';
import '../Provider/side_provider.dart';
import '../Widgets/color_wiget_row.dart';
import '../Widgets/first_row_details.dart';
import '../Widgets/size_widget_row.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(cartProvider);
    final ProductsModels product = ref.watch(productDetails);
    ref.watch(isFavoriteProvider);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            product.imagePath,
            width: double.infinity,
            height: 340,
            fit: BoxFit.fill,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                  controller: scrollController,
                  children: [
                    FirstRowDetails(
                      product: product,
                      onPressed: () {
                        product.isFavorite = !product.isFavorite;
                        ref.watch(isFavoriteProvider.notifier).update((state) => !state);
                      },
                    ),
                    Text(
                      product.productName,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        'Description',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Text(
                      product.description,
                      style: const TextStyle(color: Colors.grey, height: 1.8),
                    ),
                    ColorWidgetRow(product: product),
                    SizeWidgetRow(product: product),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: 20,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SignElevatedButton(
                  text: 'Add to Cart',
                  onPressed: () {
                    ref.watch(cartProvider.notifier).addProductInCart(product);
                    // ref.watch(reFresh.notifier).update((state) => !state);
                  },
                ),
              ))
        ],
      ),
    );
  }
}
