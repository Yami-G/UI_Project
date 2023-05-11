import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Shared/Resources/images.dart';
import '../Widgets/HomeScreenWidget/custom_list_view__builder.dart';
import '../Widgets/HomeScreenWidget/icon_side_search.dart';
import '../Widgets/HomeScreenWidget/list_view_title.dart';
import '../Widgets/HomeScreenWidget/search_widget.dart';
import '../Widgets/HomeScreenWidget/special_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      notification: 5,
                    ),
                    SideSearchIcon(
                      icon: FontAwesomeIcons.bell,
                      notification: 0,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListViewTitles(
                    title: 'Special for you',
                  ),
                  SpecialListView(
                    imagePath: Images.lapTop,
                    title: 'Computer',
                  ),
                ],
              ),
              CustomListViewB(
                listViewTitle: 'Featured Products',
                imagePath: Images.lapTop,
                productName: 'Bluetooth',
                productPrice: 200.75,
              ),
              CustomListViewB(
                listViewTitle: 'Featured Products',
                imagePath: Images.lapTop,
                productName: 'Cat fury',
                productPrice: 400.50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}