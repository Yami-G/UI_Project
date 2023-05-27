import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../Models/login_model.dart';
import '../../Provider/side_provider.dart';
import '../../Shared/Resources/images.dart';
import '../../Shared/Service/shared_storage.dart';
import '../../Shared/Service/validation_class.dart';
import '../../Widgets/cust_text_form_field.dart';
import '../../Widgets/elevation_button.dart';
import '../../Widgets/title_pop.dart';

class EditProfileScreen extends HookConsumerWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController nameController = useTextEditingController();
    final TextEditingController emailController = useTextEditingController();
    final TextEditingController phoneController = useTextEditingController();
    final TextEditingController countryController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const TitlePop(
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
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                        ),
                      ],
                    ),
                    CustomTextFormField(
                      title: 'Your Message',
                      showTitle: false,
                      hintText: ref.watch(userDataLogin).name == '' ? 'Name' : ref.watch(userDataLogin).name,
                      obscureText: false,
                      maxLines: 1,
                      controller: nameController,
                      validator: (v) {
                        if (v!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Is Empty field';
                        }
                      },
                    ),
                    CustomTextFormField(
                      title: 'Your Message',
                      showTitle: false,
                      hintText: ref.watch(userDataLogin).email == '' ? 'Email' : ref.watch(userDataLogin).email,
                      obscureText: false,
                      maxLines: 1,
                      controller: emailController,
                      validator: (v) {
                        if ((v!.contains('@gmail.com') ||
                                v.contains('@hotmail.com') ||
                                v.contains('@yahoo.com') ||
                                v.contains('@outlook.com')) &&
                            ValidationTextForm.isValidEmail(v) &&
                            v.isNotEmpty) {
                          return null;
                        } else {
                          return 'not a valid email';
                        }
                      },
                    ),
                    CustomTextFormField(
                      title: 'Your Message',
                      showTitle: false,
                      hintText: ref.watch(userDataLogin).phone == '' ? 'Phone' : ref.watch(userDataLogin).phone,
                      obscureText: false,
                      maxLines: 1,
                      controller: phoneController,
                      validator: (v) {
                        if (v!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Is Empty field';
                        }
                      },
                    ),
                    CustomTextFormField(
                      title: 'Your Message',
                      showTitle: false,
                      hintText: ref.watch(userDataLogin).country == '' ? 'Country' : ref.watch(userDataLogin).country,
                      obscureText: false,
                      maxLines: 1,
                      controller: countryController,
                      validator: (v) {
                        if (v!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Is Empty field';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SignElevatedButton(
                      text: 'Save',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          SharedStorage().setUserData(
                              loginUser: LoginUser(
                            name: nameController.text,
                            phone: phoneController.text,
                            password: ref.watch(userDataLogin).password,
                            imagePath: '',
                            email: emailController.text,
                            country: countryController.text,
                          ));
                          ref.watch(userDataLogin.notifier).update((state) => LoginUser(
                                name: nameController.text,
                                phone: phoneController.text,
                                password: ref.watch(userDataLogin).password,
                                imagePath: '',
                                email: emailController.text,
                                country: countryController.text,
                              ));
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
