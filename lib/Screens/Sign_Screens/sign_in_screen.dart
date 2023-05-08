import 'package:amit_course/Screens/Sign_Screens/sign_up_screen.dart';
import 'package:amit_course/Screens/Sign_Screens/verification_screen.dart';
import 'package:amit_course/Shared/Resources/text.dart';
import 'package:amit_course/Widgets/elevation_button.dart';
import 'package:amit_course/Widgets/sign_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../Shared/Resources/images.dart';
import '../../Widgets/cust_text_form_field.dart';
import '../../Widgets/sign_last_text_buttom.dart';
import '../../Widgets/social_icon.dart';

final checkBoxProvider = StateProvider((ref) => false);

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkBoxState = ref.watch(checkBoxProvider);
    final TextEditingController emailController = useTextEditingController();
    final TextEditingController passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  Texts.welcome,
                  style: TextStyle(
                    fontSize: 33.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  Texts.login,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: Image.asset(
                    Images.splash,
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
                  title: 'Email Address',
                  controller: emailController,
                  hintText: 'e.g name@example.com',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormField(
                  obscureText: true,
                  title: 'Password',
                  controller: passwordController,
                  hintText: 'e.g ***************',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: checkBoxState,
                          onChanged: (v) {
                            ref.watch(checkBoxProvider.notifier).update((state) => !state);
                          },
                        ),
                        const SignScreenText(title: 'Remember me'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const SignScreenText(title: 'Forgot Password'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SignElevatedButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const VerificationScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(imagePath: Images.googleLogo, width: 35, height: 35),
                    SizedBox(
                      width: 30.w,
                    ),
                    SocialIcon(imagePath: Images.faceBookLogo),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                LastTextButton(
                  leftText: "Don't have an account?",
                  rightText: 'Sign Up',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
