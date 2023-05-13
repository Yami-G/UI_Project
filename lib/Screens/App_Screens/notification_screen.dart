import 'package:flutter/material.dart';

import '../../Shared/Resources/images.dart';
import '../../Widgets/custom_list_tile.dart';
import '../../Widgets/title_pop.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitlePop(
              title: 'Notifications',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promotions',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 220,
                    width: double.infinity,
                    child: CustomListTile(
                      title: 'Bluetooth Printer',
                      imagePath: Images.lapTop,
                      price: 200.75,
                      index: 2,
                      showIcon: false,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Your Activity',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 4,
                          child: SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: ListTile(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Order Arrived'),
                                    Text('Order Arrived'),
                                    Text('Yesterdayy 10:45 AM'),
                                  ],
                                ),
                              ),
                              leading: CircleAvatar(child: Icon(Icons.add_card_rounded)),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
