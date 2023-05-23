import 'package:amit_course/Screens/App_Screens/notification_screen.dart';
import 'package:amit_course/Screens/App_Screens/your_cart_screen.dart';
import 'package:amit_course/Screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Provider/cart_provider.dart';
import '../Provider/product_provider.dart';
import '../Provider/side_provider.dart';
import '../Shared/dummy_data/dummy_data_list.dart';
import '../Widgets/icon_side_search.dart';
import '../Widgets/list_view_builder_custom.dart';
import '../Widgets/list_view_title.dart';
import '../Widgets/search_widget.dart';
import '../Widgets/special_list_view.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(cartProvider);
    ref.watch(isFavoriteProvider);
    ref.watch(productDetails);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20.h,
            left: 15.w,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchWidget(
                      width: 200.w,
                      searchWord: 'Search Product',
                    ),
                    SideSearchIcon(
                      icon: Icons.shopping_cart_outlined,
                      notification: ref.watch(cartProvider).length,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CartScreen(),
                          ),
                        );
                      },
                    ),
                    SideSearchIcon(
                      icon: FontAwesomeIcons.bell,
                      notification: 0,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NotificationScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const ListViewTitles(
                title: 'Special for you',
              ),
              SizedBox(
                width: double.infinity.w,
                height: 120.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: specialForYou.length,
                  itemBuilder: (context, index) {
                    return SpecialLIstViewWidget(
                      imagePath: specialForYou[index].imagePath,
                      onTap: () {
                        ref.read(productDetails.notifier).update((state) => specialForYou[index]);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      productName: specialForYou[index].productName,
                    );
                  },
                ),
              ),
              const ListViewTitles(
                title: 'Featured Products',
              ),
              SizedBox(
                width: double.infinity.w,
                height: 185.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredProducts.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilderCustom(
                      onTap: () {
                        ref.read(productDetails.notifier).update((state) => featuredProducts[index]);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      onPressed: () {
                        featuredProducts[index].isFavorite = !featuredProducts[index].isFavorite;
                        ref.watch(isFavoriteProvider.notifier).update((state) => !state);
                      },
                      imagePath: featuredProducts[index].imagePath,
                      isFavorite: featuredProducts[index].isFavorite,
                      productName: featuredProducts[index].productName,
                      productPrice: featuredProducts[index].productPrice,
                    );
                  },
                ),
              ),
              const ListViewTitles(
                title: 'Best Selling Products',
              ),
              SizedBox(
                width: double.infinity.w,
                height: 185.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: bestSellingProducts.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilderCustom(
                      onTap: () {
                        ref.read(productDetails.notifier).update((state) => bestSellingProducts[index]);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      onPressed: () {
                        bestSellingProducts[index].isFavorite = !bestSellingProducts[index].isFavorite;
                        ref.watch(isFavoriteProvider.notifier).update((state) => !state);
                      },
                      imagePath: bestSellingProducts[index].imagePath,
                      isFavorite: bestSellingProducts[index].isFavorite,
                      productName: bestSellingProducts[index].productName,
                      productPrice: bestSellingProducts[index].productPrice,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
