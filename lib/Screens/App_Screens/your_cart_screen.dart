import 'package:flutter/material.dart';

import '../../Shared/Resources/images.dart';
import '../../Widgets/custom_list_tile.dart';
import '../../Widgets/elevation_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    SizedBox(
                      width: 50,
                    )
                  ],
                ),
                const Text(
                  '5 Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                CustomListTile(
                  title: 'Bluetooth Printer',
                  imagePath: Images.lapTop,
                  price: 200.75,
                  index: 8,
                  showIcon: false,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  makeNewWidget: true,
                  widget: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                      Text('1'),
                      IconButton(
                        onPressed: () {},
                        icon: Text('__'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sub Total'),
                                Text('\$150.0'),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 4,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sub Total'),
                                Text('\$150.0'),
                              ],
                            ),
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
                      onPressed: () {},
                      child: Text('Check Out'),
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
