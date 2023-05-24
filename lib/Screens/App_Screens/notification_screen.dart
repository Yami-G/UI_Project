import 'package:amit_course/Widgets/list_tile_custom_widget.dart';
import 'package:flutter/material.dart';

import '../../Shared/Resources/images.dart';
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
            const TitlePop(
              title: 'Notifications',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Promotions',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 220,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return const ListTileCustom(
                            imagePath: Images.lapTop,
                            title: 'Bluetooth Printer',
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            price: 200.75,
                            showIcon: false,
                            makeNewWidget: false,
                            widget: SizedBox());
                      },
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
                                  children: const [
                                    Text('Order Arrived'),
                                    Text('Order Arrived'),
                                    Text('Yesterday 10:45 AM'),
                                  ],
                                ),
                              ),
                              leading: const CircleAvatar(
                                child: Icon(Icons.add_card_rounded),
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
          ],
        ),
      ),
    );
  }
}
