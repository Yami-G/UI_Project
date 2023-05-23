import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  final double width;
  final String searchWord;
  final TextEditingController? controller;
  const SearchWidget({
    super.key,
    this.controller,
    required this.width,
    required this.searchWord,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(30.r),
      elevation: 4,
      child: Container(
        width: width,
        color: Colors.white,
        height: 50.h,
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextFormField(
              onSaved: (s) {},
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: searchWord,
                icon: const Icon(Icons.search_outlined),
                iconColor: Colors.indigo,
                border: InputBorder.none,
                labelStyle: TextStyle(color: Colors.black, fontSize: 24.sp),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
