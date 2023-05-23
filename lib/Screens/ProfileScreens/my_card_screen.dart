import 'package:flutter/material.dart';
import 'package:u_credit_card/u_credit_card.dart';

import '../../Shared/dummy_data/dummy_data_list.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({Key? key}) : super(key: key);

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
                  'My Cards',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Icon(Icons.add_card_rounded),
              ],
            ),
            Text(
              'Your Payment Cards',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).secondaryHeaderColor.withOpacity(0.54),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cardModels.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: CreditCardUi(
                      cardHolderFullName: cardModels[index].cardHolderFullName,
                      cardNumber: cardModels[index].cardNumber,
                      validFrom: cardModels[index].validFrom,
                      validThru: cardModels[index].validThru,
                      bottomRightColor: Colors.black,
                      topLeftColor: Colors.blue,
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
