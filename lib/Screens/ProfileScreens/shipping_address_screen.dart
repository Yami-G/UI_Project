import 'package:flutter/material.dart';

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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const Card(
                    elevation: 4,
                    child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: ListTile(
                        title: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Jhon doe +684616161',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text('Schools Streets Behind theOffical School Maghdouch, Saido ,,Lebanon, 1600'),
                        leading: Icon(
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
