import 'package:amit_course/Screens/Sign_Screens/sign_in_screen.dart';
import 'package:amit_course/Shared/Resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void didChangeDependencies() async {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.of(context)
          .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SignInScreen()), (route) => false);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
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
