import 'package:amit_course/Widgets/sign_last_text_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/elevation_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 33.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Please  enter the OTP code sent to you by SMS',
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              OtpTextField(
                numberOfFields: 4,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                }, // end onSubmit
              ),
              SizedBox(
                height: 20.h,
              ),
              const LastTextButton(leftText: "Didn't get a code?", rightText: ' Send again'),
              SizedBox(
                height: 240.h,
              ),
              SignElevatedButton(
                text: 'Verify',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
