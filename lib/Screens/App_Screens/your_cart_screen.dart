import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../Provider/cart_provider.dart';
import '../../Widgets/list_tile_custom_widget.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(cartProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const Text(
                      'Your Cart',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 50,
                    )
                  ],
                ),
                Text(
                  '${ref.watch(cartProvider).isEmpty ? 'Zero' : ref.watch(cartProvider).length} Products',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: ref.watch(cartProvider).length,
                    itemBuilder: (context, index) {
                      return ListTileCustom(
                        imagePath: ref.watch(cartProvider)[index].imagePath,
                        title: ref.watch(cartProvider)[index].productName,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        price: ref.watch(cartProvider)[index].productPrice,
                        showIcon: false,
                        makeNewWidget: true,
                        widget: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                ref.watch(cartProvider.notifier).addProductInCart(ref.watch(cartProvider)[index]);
                                // ref.watch(reFresh.notifier).update((state) => !state);
                              },
                              icon: const Icon(Icons.add),
                            ),
                            Text(ref.watch(cartProvider)[index].quantity.toString()),
                            IconButton(
                              onPressed: () {
                                ref.watch(cartProvider.notifier).deleteProductInCart(ref.watch(cartProvider)[index]);
                                // ref.watch(reFresh.notifier).update((state) => !state);
                              },
                              icon: const Text('__'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 60,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Sub Total'),
                              Text('\$000.0'),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Total'),
                              Text('\$${ref.watch(cartProvider.notifier).totalPrice.ceil()}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo, // Background color
                        foregroundColor: Colors.white.withOpacity(0.7), // Text Color (Foreground color)
                      ),
                      onPressed: () {
                        ref.watch(cartProvider.notifier).clearCart();
                        // ref.watch(reFresh.notifier).update((state) => !state);
                      },
                      child: const Text('Check Out'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
