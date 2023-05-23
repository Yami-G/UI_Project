import 'package:flutter/material.dart';
import '../../Shared/dummy_data/dummy_data_list.dart';
import '../../Widgets/cust_row.dart';
import '../../Widgets/title_pop.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TitlePop(
            title: 'My Orders',
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ordersModels.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  elevation: 4,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: double.infinity,
                    height: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomRow(
                            rightText: ordersModels[index].id,
                            leftText: 'Order #',
                          ),
                          Divider(
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          CustomRow(
                            leftText: 'Date',
                            rightText: ordersModels[index].date,
                          ),
                          CustomRow(
                            leftText: 'Total Price',
                            rightText: ordersModels[index].totalPrice,
                          ),
                          CustomRow(
                            leftText: 'Status',
                            rightText: ordersModels[index].status,
                          ),
                          Row(
                            children: [
                              InkWell(
                                child: Container(
                                  height: 25,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Details',
                                      style: TextStyle(color: Theme.of(context).primaryColor),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ordersModels[index].isTrack
                                  ? InkWell(
                                      child: Container(
                                        height: 25,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Track',
                                            style: TextStyle(color: Theme.of(context).primaryColor),
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
