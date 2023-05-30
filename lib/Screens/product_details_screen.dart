import 'package:amit_course/Models/fakeAPI.dart';
import 'package:amit_course/Widgets/elevation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Provider/cart_provider.dart';
import '../Provider/product_provider.dart';
import '../Provider/side_provider.dart';
import '../Widgets/first_row_details.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(cartProvider);
    final FakeApi product = ref.watch(fakeProductDetails);
    ref.watch(isFavoriteProvider);
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            product.image!,
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
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
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
                      onPressed: () {},
                    ),
                    Text(
                      product.title!,
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
                      product.description!,
                      style: const TextStyle(color: Colors.grey, height: 1.8),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: 20,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: IconButton(
                color: Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.orange,
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
                    // ref.watch(reFresh.notifier).update((state) => !state);
                  },
                ),
              ))
        ],
      ),
    );
  }
}
