import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String leftText;
  final String rightText;
  const LastTextButton({
    super.key,
    required this.leftText,
    required this.rightText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            leftText,
            style: TextStyle(
              color: Colors.black.withOpacity(0.54),
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          Text(
            rightText,
            style: TextStyle(
              color: Colors.indigo.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
