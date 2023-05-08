import 'package:amit_course/Widgets/elevation_button.dart';
import 'package:amit_course/Widgets/sign_last_text_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../Shared/Resources/images.dart';
import '../../Widgets/cust_text_form_field.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController nameController = useTextEditingController();
    final TextEditingController emailController = useTextEditingController();
    final TextEditingController passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Text(
                  'Please enter your information  below to sign up',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: Image.asset(
                    Images.splash1,
                    width: 100.w,
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormField(
                  obscureText: false,
                  title: 'Name',
                  controller: nameController,
                  hintText: 'Please enter your name',
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  obscureText: false,
                  title: 'Email',
                  controller: passwordController,
                  hintText: 'e.g name@example.com',
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  obscureText: true,
                  title: 'Password',
                  controller: passwordController,
                  hintText: 'e.g ***************',
                ),
                SizedBox(
                  height: 25.h,
                ),
                SignElevatedButton(
                  text: 'Sign up',
                ),
                SizedBox(
                  height: 25.h,
                ),
                LastTextButton(
                  leftText: "Already have an account?",
                  rightText: ' Sign in',
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
