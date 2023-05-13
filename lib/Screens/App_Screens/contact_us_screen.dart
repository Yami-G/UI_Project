import 'package:flutter/material.dart';

import '../../Widgets/cust_text_form_field.dart';
import '../../Widgets/elevation_button.dart';
import '../../Widgets/title_pop.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitlePop(
            title: 'Contact Us',
          ),
          const ListTile(
            leading: Icon(
              Icons.phone_android,
              size: 40,
            ),
            title: Text('Phones'),
            subtitle: Text('+123 98489483543'),
          ),
          const ListTile(
            leading: Icon(
              Icons.email_outlined,
              size: 40,
            ),
            title: Text('Email'),
            subtitle: Text('hello@example.com'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomTextFormField(
                  showTitle: true,
                  title: 'Subject',
                  hintText: 'Type your subject here...',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  showTitle: true,
                  title: 'Your Message',
                  hintText: 'Type your message here...',
                  obscureText: false,
                  maxLines: 8,
                ),
                const SizedBox(
                  height: 20,
                ),
                SignElevatedButton(
                  text: 'Send',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
