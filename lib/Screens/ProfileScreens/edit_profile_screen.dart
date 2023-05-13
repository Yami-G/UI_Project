import 'package:flutter/material.dart';

import '../../Shared/Resources/images.dart';
import '../../Widgets/cust_text_form_field.dart';
import '../../Widgets/elevation_button.dart';
import '../../Widgets/title_pop.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitlePop(
              title: 'Edit Profile',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        foregroundImage: AssetImage(Images.lapTop),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 15,
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CustomTextFormField(
                    title: 'Your Message',
                    showTitle: false,
                    hintText: 'Name',
                    obscureText: false,
                    maxLines: 1,
                  ),
                  CustomTextFormField(
                    title: 'Your Message',
                    showTitle: false,
                    hintText: 'Email',
                    obscureText: false,
                    maxLines: 1,
                  ),
                  CustomTextFormField(
                    title: 'Your Message',
                    showTitle: false,
                    hintText: 'Phone',
                    obscureText: false,
                    maxLines: 1,
                  ),
                  CustomTextFormField(
                    title: 'Your Message',
                    showTitle: false,
                    hintText: 'Country',
                    obscureText: false,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SignElevatedButton(
                    text: 'Save',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
