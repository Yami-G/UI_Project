import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Shared/dummy_data/dummy_data_list.dart';
import '../../Widgets/list_tile_custom_widget.dart';
import '../../Widgets/search_widget.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Search',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SearchWidget(
                    width: 300,
                    searchWord: 'Search Here',
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {
                          //todo ref.watch(reFresh.notifier).update((state) => !state);
                        },
                        icon: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.sliders,
                            color: Colors.indigo,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: featuredProducts.length,
                itemBuilder: (context, index) {
                  return ListTileCustom(
                    imagePath: featuredProducts[index].imagePath,
                    title: featuredProducts[index].productName,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    price: featuredProducts[index].productPrice,
                    showIcon: true,
                    makeNewWidget: false,
                    widget: const SizedBox(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
