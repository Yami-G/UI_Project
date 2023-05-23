import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignElevatedButton extends StatelessWidget {
  final String text;
  final double? horizontal;
  final double? vertical;
  final void Function()? onPressed;
  const SignElevatedButton({
    super.key,
    this.onPressed,
    this.horizontal,
    this.vertical,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.indigo),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 50.h,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).primaryColor.withOpacity(0.8),
              fontSize: 20.sp,
            ),
          ),
        ),
      ),
    );
  }
}
