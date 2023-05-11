import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Shared/Resources/images.dart';
import 'list_view_title.dart';

class CustomListViewB extends StatelessWidget {
  String listViewTitle;
  String imagePath;
  String productName;
  double productPrice;
  CustomListViewB({
    super.key,
    required this.listViewTitle,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListViewTitles(
          title: listViewTitle,
        ),
        SizedBox(
          width: double.infinity.w,
          height: 180.h,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 5.w),
                clipBehavior: Clip.hardEdge,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(20.r),
                      elevation: 4,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            width: double.infinity.w,
                            height: 120.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.r),
                                bottomRight: Radius.circular(20.r),
                              ),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.heart,
                                color: Colors.indigo,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      productName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      '\$$productPrice',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
