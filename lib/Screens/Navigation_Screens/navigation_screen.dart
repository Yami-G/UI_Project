import 'package:amit_course/Screens/home_screen.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../App_Screens/categories_screen.dart';
import '../App_Screens/profile_screen.dart';
import '../App_Screens/search_screen.dart';
import '../App_Screens/wish_list_screen.dart';

final position = StateProvider((ref) => 0);

class NavigatorScreen extends HookConsumerWidget {
  NavigatorScreen({Key? key}) : super(key: key);
  final List<Widget> _navigationScreens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const SearchScreen(),
    const WishListScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int positionOfScreen = ref.watch(position);
    return Scaffold(
      body: _navigationScreens.elementAt(positionOfScreen),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (int index) => ref.watch(position.notifier).update((state) => index),
        currentIndex: positionOfScreen,
        isFloating: false,
        scaleFactor: 0.5,
        strokeColor: Colors.transparent,
        elevation: 1,
        selectedColor: const Color(0xff000053),
        borderRadius: const Radius.circular(10),
        iconSize: 24.sp,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.home_work_outlined),
            selectedTitle: const Text('Home'),
          ),
          CustomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.tableCellsLarge),
            selectedTitle: const Text('Categories'),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.search_outlined),
            selectedTitle: const Text('Search'),
          ),
          CustomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.heart),
            selectedTitle: const Text('WishList'),
          ),
          CustomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.circleUser),
            selectedTitle: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
