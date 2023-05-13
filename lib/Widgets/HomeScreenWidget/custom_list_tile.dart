import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String imagePath;
  String title;
  double price;
  int index;
  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;
  bool showIcon;

  CustomListTile({
    super.key,
    required this.showIcon,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.index,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: index,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                IntrinsicWidth(
                  child: IntrinsicHeight(
                    child: SizedBox(
                      width: 260,
                      child: ListTile(
                        title: Text(title),
                        subtitle: Row(
                          mainAxisAlignment: mainAxisAlignment,
                          crossAxisAlignment: crossAxisAlignment,
                          children: [
                            Text(
                              '\$$price',
                              style: const TextStyle(color: Colors.indigo),
                            ),
                            showIcon
                                ? IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_shopping_cart_outlined,
                                      color: Colors.indigo,
                                    ),
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
