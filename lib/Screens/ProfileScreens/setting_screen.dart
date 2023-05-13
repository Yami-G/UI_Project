import 'package:flutter/material.dart';

import '../../Widgets/title_pop.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitlePop(
            title: 'Settings',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Material(
                  elevation: 4,
                  color: Colors.white,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: ListTile(
                    title: Text('Push Notifications'),
                    trailing: Container(
                      width: 110,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('off / on'),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 4,
                  color: Colors.white,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: ListTile(
                    title: Text('Theme'),
                    trailing: Container(
                      width: 140,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Light / Dark'),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 4,
                  color: Colors.white,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: ListTile(
                    title: Text('Language'),
                    trailing: Container(
                      width: 80,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Englissh'),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
