import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialIcon extends StatelessWidget {
  String text;
  SocialIcon({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      elevation: 5,
      child: CircleAvatar(
        radius: 25.r,
        backgroundColor: Colors.white,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 38.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
