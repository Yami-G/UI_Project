import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialLIstViewWidget extends StatelessWidget {
  final String imagePath;
  final String productName;
  final Function()? onTap;
  const SpecialLIstViewWidget({
    super.key,
    required this.productName,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 15.w),
        clipBehavior: Clip.hardEdge,
        width: 220.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              color: Colors.black12,
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              left: 15.w,
              top: 20.h,
              child: Text(
                productName,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
