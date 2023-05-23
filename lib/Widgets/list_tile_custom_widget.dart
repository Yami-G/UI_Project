import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  const ListTileCustom({
    super.key,
    required this.imagePath,
    required this.title,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.price,
    required this.showIcon,
    required this.makeNewWidget,
    required this.widget,
  });

  final String imagePath;
  final String title;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double price;
  final bool showIcon;
  final bool? makeNewWidget;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
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
                width: 210,
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
                          : const SizedBox()
                    ],
                  ),
                ),
              ),
            ),
          ),
          makeNewWidget ?? false ? widget! : const SizedBox(),
        ],
      ),
    );
  }
}
