import 'package:amit_course/Screens/Sign_Screens/sign_in_screen.dart';
import 'package:amit_course/Shared/Resources/images.dart';
import 'package:amit_course/Shared/Resources/storage_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Shared/Service/shared_storage.dart';
import '../Navigation_Screens/navigation_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      SharedStorage().getUserData(key: StorageKeys.userData).then((v) {
        debugPrint('user = $v');
        if (v != null) {
          Navigator.of(context)
              .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => NavigatorScreen()), (route) => false);
        } else {
          Navigator.of(context)
              .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SignInScreen()), (route) => false);
        }
      });
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          Images.splash,
          width: 200.w,
          height: 200.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
