import 'package:flutter/material.dart';

import '../../Shared/dummy_data/dummy_data_list.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
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
                  'Shipping Address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Icon(Icons.add_location_alt_outlined),
              ],
            ),
            const Text(
              'Your Shipping Addresses',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: shippingAddress.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            '${shippingAddress[index].name} +${shippingAddress[index].phone}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(shippingAddress[index].shippingDescription),
                        leading: const Icon(
                          Icons.location_on_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
