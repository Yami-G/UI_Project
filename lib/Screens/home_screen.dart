import 'package:amit_course/Screens/App_Screens/notification_screen.dart';
import 'package:amit_course/Screens/App_Screens/your_cart_screen.dart';
import 'package:amit_course/Screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Provider/cart_provider.dart';
import '../Provider/fake_api_provider.dart';
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
    final allProductList = ref.watch(fakeAPIProvider.notifier).allProductList;
    final electronicsList = ref.watch(fakeAPIProvider.notifier).electronicsList;
    final jeweleryList = ref.watch(fakeAPIProvider.notifier).jeweleryList;
    final menClothingList = ref.watch(fakeAPIProvider.notifier).menClothingList;
    final womenClothingList = ref.watch(fakeAPIProvider.notifier).womenClothingList;
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
                  itemCount: allProductList.length,
                  itemBuilder: (context, index) {
                    return SpecialLIstViewWidget(
                      imagePath: allProductList[index].image!,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      productName: allProductList[index].title!,
                      assetOrNetImage: true,
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
                title: 'Electronics Products',
              ),
              SizedBox(
                width: double.infinity.w,
                height: 185.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: electronicsList.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilderCustom(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      imagePath: electronicsList[index].image!,
                      isFavorite: false,
                      productName: electronicsList[index].title!,
                      productPrice: electronicsList[index].price!.toDouble(),
                      assetOrNetImage: true,
                    );
                  },
                ),
              ),
              const ListViewTitles(
                title: 'jewelery Products',
              ),
              SizedBox(
                width: double.infinity.w,
                height: 185.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: jeweleryList.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilderCustom(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      imagePath: jeweleryList[index].image!,
                      isFavorite: false,
                      productName: jeweleryList[index].title!,
                      productPrice: jeweleryList[index].price!.toDouble(),
                      assetOrNetImage: true,
                    );
                  },
                ),
              ),
              const ListViewTitles(
                title: 'MenClothing Products',
              ),
              SizedBox(
                width: double.infinity.w,
                height: 185.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: menClothingList.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilderCustom(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      imagePath: menClothingList[index].image!,
                      isFavorite: false,
                      productName: menClothingList[index].title!,
                      productPrice: menClothingList[index].price!.toDouble(),
                      assetOrNetImage: true,
                    );
                  },
                ),
              ),
              const ListViewTitles(
                title: 'WomenClothing Products',
              ),
              SizedBox(
                width: double.infinity.w,
                height: 185.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: womenClothingList.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilderCustom(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ));
                      },
                      imagePath: womenClothingList[index].image!,
                      isFavorite: false,
                      productName: womenClothingList[index].title!,
                      productPrice: womenClothingList[index].price!.toDouble(),
                      assetOrNetImage: true,
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
