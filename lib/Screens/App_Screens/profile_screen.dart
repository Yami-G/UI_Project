import 'package:amit_course/Screens/App_Screens/contact_us_screen.dart';
import 'package:amit_course/Screens/App_Screens/edit_profile_screen.dart';
import 'package:amit_course/Screens/App_Screens/faq_screen.dart';
import 'package:amit_course/Screens/App_Screens/language_screen.dart';
import 'package:amit_course/Screens/App_Screens/my_card_screen.dart';
import 'package:amit_course/Screens/App_Screens/my_orders_screen.dart';
import 'package:amit_course/Screens/App_Screens/notification_screen.dart';
import 'package:amit_course/Screens/App_Screens/privacy_policy_screen.dart';
import 'package:amit_course/Screens/App_Screens/setting_screen.dart';
import 'package:amit_course/Screens/App_Screens/shipping_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Models/profile_models.dart';
import '../../Shared/Resources/images.dart';
import 'my_account_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  List<ProfileModel> x = [
    ProfileModel(title: 'My Account', icon: FontAwesomeIcons.circleUser),
    ProfileModel(title: 'My Orders', icon: FontAwesomeIcons.bagShopping),
    ProfileModel(title: 'Contact Us', icon: FontAwesomeIcons.addressBook),
    ProfileModel(title: 'Edit Profile', icon: FontAwesomeIcons.userPen),
    ProfileModel(title: 'Settings', icon: FontAwesomeIcons.gear),
    ProfileModel(title: 'Notification', icon: FontAwesomeIcons.envelope),
    ProfileModel(title: 'My Cards', icon: FontAwesomeIcons.creditCard),
    ProfileModel(title: 'Shipping Address', icon: FontAwesomeIcons.locationDot),
    ProfileModel(title: 'Language', icon: FontAwesomeIcons.language),
    ProfileModel(title: 'Privacy Policy', icon: FontAwesomeIcons.buildingShield),
    ProfileModel(title: 'FAQ', icon: FontAwesomeIcons.exclamation),
  ];
  List<Widget> screens = [
    MyAccountScreen(),
    MyOrdersScreen(),
    ContactUsScreen(),
    EditProfileScreen(),
    SettingScreen(),
    NotificationScreen(),
    MyCardScreen(),
    ShippingAddressScreen(),
    LanguageScreen(),
    PrivacyPolicyScreen(),
    FAQScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              foregroundImage: AssetImage(Images.lapTop),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'John Doe',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: x.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => screens[index],
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: FaIcon(x[index].icon),
                        title: Text(x[index].title),
                        trailing: FaIcon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
