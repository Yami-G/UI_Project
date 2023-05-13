import 'package:flutter/material.dart';
import '../../Models/orders_models.dart';
import '../../Widgets/cust_row.dart';
import '../../Widgets/title_pop.dart';

class MyOrdersScreen extends StatelessWidget {
  MyOrdersScreen({Key? key}) : super(key: key);

  List<OrdersModels> x = [
    OrdersModels(id: '26091945147', date: '11/9/2022', totalPrice: '\$ 1750.0', status: 'Pending', isTrack: true),
    OrdersModels(id: '35091945144', date: '20/5/2022', totalPrice: '\$ 450.0', status: 'Canceled', isTrack: false),
    OrdersModels(id: '48091945145', date: '5/2/2022', totalPrice: '\$ 790.0', status: 'Delivered', isTrack: false),
    OrdersModels(id: '98091945149', date: '5/3/2022', totalPrice: '\$ 2000.0', status: 'Canceled', isTrack: false),
    OrdersModels(id: '10091945146', date: '3/5/2022', totalPrice: '\$ 3000.0', status: 'Pending', isTrack: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitlePop(
            title: 'My Orders',
          ),
          Expanded(
            child: ListView.builder(
              itemCount: x.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  elevation: 4,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: double.infinity,
                    height: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customRow(
                            rightText: x[index].id,
                            leftText: 'Order #',
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          customRow(
                            leftText: 'Date',
                            rightText: x[index].date,
                          ),
                          customRow(
                            leftText: 'Total Price',
                            rightText: x[index].totalPrice,
                          ),
                          customRow(
                            leftText: 'Status',
                            rightText: x[index].status,
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
                                  child: const Center(
                                    child: Text(
                                      'Details',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              x[index].isTrack
                                  ? InkWell(
                                      child: Container(
                                        height: 25,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Track',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox(),
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
