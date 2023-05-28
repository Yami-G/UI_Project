import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewBuilderCustom extends StatelessWidget {
  final void Function()? onTap;
  final void Function()? onPressed;
  final String productName;
  final double productPrice;
  final String imagePath;
  final bool isFavorite;
  bool? assetOrNetImage;
  ListViewBuilderCustom({
    super.key,
    this.onPressed,
    this.onTap,
    required this.isFavorite,
    required this.productName,
    required this.productPrice,
    required this.imagePath,
    this.assetOrNetImage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                    child: assetOrNetImage == null
                        ? Image.asset(
                            imagePath,
                            fit: BoxFit.fill,
                          )
                        : Image.network(
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
                      color: Theme.of(context).primaryColor,
                    ),
                    child: IconButton(
                      onPressed: onPressed,
                      icon: FaIcon(
                        isFavorite ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
                        color: isFavorite ? Colors.red : Colors.indigo,
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
      ),
    );
  }
}
