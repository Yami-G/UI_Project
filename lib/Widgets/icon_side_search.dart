import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideSearchIcon extends StatelessWidget {
  final IconData icon;
  final int? notification;
  final void Function()? onPressed;
  const SideSearchIcon({
    super.key,
    required this.icon,
    this.notification,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      elevation: 5,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 24.r,
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: Colors.indigo,
                size: 26.sp,
              ),
            ),
          ),
          notification == 0
              ? const SizedBox()
              : CircleAvatar(
                  radius: 10.r,
                  backgroundColor: Colors.indigo.shade400,
                  child: Text('$notification'),
                )
        ],
      ),
    );
  }
}
