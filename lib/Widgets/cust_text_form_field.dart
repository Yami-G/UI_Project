import 'package:amit_course/Widgets/sign_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final bool showTitle;
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int? maxLines;
  const CustomTextFormField({
    super.key,
    this.maxLines,
    this.validator,
    required this.showTitle,
    this.controller,
    required this.title,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showTitle ? SignScreenText(title: title) : const SizedBox(),
        SizedBox(height: 7.h),
        Card(
          elevation: 5,
          shadowColor: Colors.black54,
          clipBehavior: Clip.values[3],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: BorderSide(
              color: Colors.white,
              width: 5.w,
            ),
          ),
          child: TextFormField(
            maxLines: maxLines ?? 1,
            validator: validator,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black38,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
              fillColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
